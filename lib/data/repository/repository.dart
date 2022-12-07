import 'package:application4/core/app_export.dart';
import 'package:application4/data/models/expiration.dart';
import 'package:application4/data/models/user.dart';

import 'package:application4/data/models/bookmark.dart';
import 'package:application4/data/models/recommend.dart';
import 'package:application4/data/models/webtoon.dart';
import 'package:application4/data/apiClient/api_client.dart';

import '../apiClient/db_client.dart';

/// instance 저장하는 친구
class Repository {
  // api 요원
  final ApiClient apiClient = ApiClient();

  // userid 및 token
  var userid = "";
  var passwd = "";
  var token = "";
  // webtoon을 저장하는 map이다. key: String, value: Webtoon
  var webtoonList= Map<String, Webtoon>();
  // 각 id마다 추천 만료를 계산하기 위해 마지막으로 즐겨찾기를 변경한 시간을 기록
  var expiration = RxList<Expiration>();

  /// init
  Repository(){
    fetchLocalDatabase();
  }

  /// userid 등록 함수
  setUserid(String userid) {
    this.userid = userid;
    apiClient.setUserid(userid);
  }
  /// userpasswd 등록 함수
  setpasswd(String passwd) {
    this.passwd = passwd;
    apiClient.setPasswd(passwd);
  }
  /// token 등록 함수
  setToken(String token) {
    this.token = token;
    apiClient.setToken(token);
  }

  /// days 계산 및 등록 함수
  setDays(){
    // db에서 refresh_time을 가져와 last에 저장
    bool isExist = false;
    var last;
    for (final element in expiration){
      if (element.name == userid){
        last = element.refresh_time;
        isExist = true;
        break;
      }
    }
    // id refresh_time 기록이 없으면 계산할 수 없으므로 0으로 둔다
    if (!isExist){
      apiClient.setDays("0");
    }
    else {
      // 현재 시각과 비교한 차를 diff에 저장
      var now = DateTime.now().toUtc();
      last = DateTime.parse("${last}Z");
      var diff = now.difference(last).inMinutes;
      print("$now, $last, $diff");
      // 일정 시간이 지났다면 days를 증가시킨다.
      if (diff>=1){
        apiClient.setDays("${diff}");
      }
      // 아니면 냅둠
      else{
        apiClient.setDays("0");
      }
      // apiClient.setDays("${now.difference(last).inMinutes}");
    }
  }

  /// 앱 local db를 가져옴
  fetchLocalDatabase() async {
    this.expiration.assignAll(await DatabaseHelper.instance.getExpiration());
  }

  /// local db에 추가
  postLocalDatabase() async {
    var ret = await DatabaseHelper.instance.add(Expiration(name: userid));
    fetchLocalDatabase();
    return ret;
  }

  /// local db의 특정 row 변경
  updateLocalDatabase() async {
    Expiration expiration = Expiration(name: userid);
    var ret = await DatabaseHelper.instance.update(expiration);
    fetchLocalDatabase();
    return ret;
  }
  /// 앱 local db를 가져옴
  updateRefreshDateLocalDatabase() async {
    var ret = await DatabaseHelper.instance.updateTime(userid);
    fetchLocalDatabase();
    return ret;
  }

  /// local db의 모든 row 삭제
  deleteLocalDatabase() async {
    var ret = await DatabaseHelper.instance.remove();
    fetchLocalDatabase();
    return ret;
  }

  /// local db삭제 후 재생성
  deleteTableLocalDatabase() async {
    var ret = await DatabaseHelper.instance.deleteTable();
    fetchLocalDatabase();
    return ret;
  }



  /// repository에 token을 등록
  getJWT(String passwd) async {
    return apiClient.postUserwithUserid(passwd);
  }

  /// repository에 User 정보를 등록
  Future<User?> fetchUserData() async {
    return apiClient.getUserwithUserid();
  }


  /// get recommend list with jwt
  Future<List<Recommend>?> fetchRecommend() async {
    // 추천을 받기 전 days 계산(추천목록이 노출된 시간이 오래되었다면 추천을 새로이 하기 위함)
    setDays();
    return apiClient.getRecommended();
  }

  /// get webtoon with jwt
  Future<Webtoon?> fetchWebtoon(String webtoonTitle) async {
    var data = await apiClient.getWebToonwithTitle(webtoonTitle);
    if (data != null) {
      webtoonList.addAll({data.webtoonName : data});
      print(webtoonList);
    }

    return data;
  }


  /// get bookmark list with jwt
  Future<List<Bookmark>?> fetchBookmark() async{
    return apiClient.getBookMark();
  }

  /// bookmark delete api
  Future<bool> deleteWebtoonFromBookmark(String webtoon) async {
    return apiClient.deleteBookMarkwithTitle(webtoon);
  }

  /// bookmark post api
  Future<bool> postWebtoonFromBookmark(String webtoon) async {
    return apiClient.postBookMark(webtoon);
  }


  /// get search webtoon with jwt
  Future<List<String>?> fetchSearchedWebtoonList(String searchText) async {
    var data = await apiClient.getWebtoonSearchwithSearchText(searchText);
    var data_title = <String>[];
    if (data != null) {
      data.forEach((webtoon) {
        webtoonList.addAll({webtoon.webtoonName : webtoon});
        data_title.add(webtoon.webtoonName);
      });
      print(webtoonList);
    }
    return data_title;
  }



  /// user post api
  postUserData(var data) async {
    return apiClient.postUser(data);
  }


  /// keyword post api
  postKeyword(var data) async{
    return apiClient.postKeyWords(data);
  }
}