import 'package:application4/data/models/user.dart';

import 'package:application4/data/models/bookmark.dart';
import 'package:application4/data/models/recommend.dart';
import 'package:application4/data/models/webtoon.dart';
import 'package:application4/data/apiClient/api_client.dart';

/// instance 저장하는 친구
class Repository {
  // api 요원
  final ApiClient apiClient = ApiClient();

  // userid 및 token
  var userid = "";
  var token = "";
  // webtoon을 저장하는 map이다. key: String, value: Webtoon
  var webtoonList= Map<String, Webtoon>();


  /// userid 등록 함수
  setUserid(String userid) {
    this.userid = userid;
    apiClient.setUserid(userid);
  }
  /// token 등록 함수
  setToken(String token) {
    this.token = token;
    apiClient.setToken(token);
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