import 'package:application4/data/models/user.dart';

import '../models/bookmark.dart';
import '../models/recommend.dart';
import '../models/webtoon.dart';
import 'package:application4/data/apiClient/api_client.dart';

/// instance 저장하는 친구
class Repository {
  final ApiClient apiClient = ApiClient();

  var userid = "";
  var token = "";
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
    return apiClient.getRecommendedwithUserid();
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
    return apiClient.getBookMarkwithUserid();
  }

  /// bookmark delete api
  Future<bool> deleteWebtoonFromBookmark(String webtoon) async {
    return apiClient.deleteBookMarkwithUseridandTitle(webtoon);
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