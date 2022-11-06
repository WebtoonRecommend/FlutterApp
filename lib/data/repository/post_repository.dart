import 'dart:convert';

import 'package:application4/data/models/user.dart';
import 'package:http/http.dart' as http;

import '../models/bookmark.dart';
import '../models/recommend.dart';
import '../models/webtoon.dart';
import 'package:application4/core/constants/constants.dart';


/// instance 저장하는 친구?
class MyRepository {
  static var client = http.Client();
  static const baseUrl = Constants.baseUrl;
  var userid = "";
  var token = "";

  //api 결과값에 개행문자 붙여서 나옴
  /// repository에 token을 등록
  getJWT(String passwd) async {
    // id, pw가 일치하는지 확인
    var data = {"PassWd":passwd};
    var body = json.encode(data);
    var response = await client.post(
        Uri.parse("${baseUrl}/User/${userid}"),
        headers: {"Content-Type": "application/json"},
        body: body
    );
    print("${response.body}");
    // api 결과값을 그대로 반환
    return response.body.substring(0,response.body.length-1);
  }

  /// repository에 User 정보를 등록
  Future<User?> fetchUserData() async {
    var response = await client.get(
      Uri.parse("${baseUrl}/User/${userid}"),
      headers: {"Content-Type": "application/json",
        "authorization":"Bearer ${token}"},
    );
    if(response.statusCode == 200){
      var jasonData = response.body;
      return userFromJson(jasonData);
    }
    else{
      print(response.statusCode);
      print(response.body);
      return null;
    }
  }


  /// get recommend list with jwt
  Future<List<Recommend>?> fetchRecommend() async {
    var response = await client.get(
      Uri.parse("${baseUrl}/Recommended/${userid}"),
      headers: {"Content-Type": "application/json",
        "authorization":"Bearer ${token}"},
    );
    if(response.statusCode == 200){
      var jasonData = response.body;
      return recommendFromJson(jasonData);
    }
    else{
      print(response.statusCode);
      print(response.body);
      return null;
    }
  }

  /// get webtoon with jwt
  Future<Webtoon?> fetchWebtoon(String webtoonTitle) async {
    var response = await client.get(
      Uri.parse("${baseUrl}/WebToon/${webtoonTitle}"),
      headers: {"Content-Type": "application/json",
        "authorization":"Bearer ${token}"},
    );

    if(response.statusCode == 200){
      var jsonData = response.body;
      var webtoonData = webtoonFromJson(jsonData);

      return webtoonData;
    }
    else {
      print(response.statusCode);
      print(response.body);
      return null;
    }
  }


  /// get bookmark list with jwt
  Future<List<Bookmark>?> fetchBookmark() async{
    var response = await client.get(
      Uri.parse("${baseUrl}/BookMark/${userid}"),
      headers: {"Content-Type": "application/json",
        "authorization":"Bearer ${token}"},
    );
    if(response.statusCode == 200){
      var jsonData = response.body;
      return bookmarkFromJson(jsonData);
    }
    else{
      print(response.statusCode);
      print(response.body);
      return null;
    }
  }

  /// bookmark delete api
  Future<bool> deleteWebtoonFromBookmark(String webtoon) async {
    var response = await client.delete(
      Uri.parse("${baseUrl}/BookMark/${userid}/${webtoon}"),
      headers: {"Content-Type": "application/json",
        "authorization":"Bearer ${token}"},
    );
    if (response.statusCode == 200) return true;
    else{
      print(response.statusCode);
      print(response.body);
      return false;
    }
  }

  /// bookmark post api
  Future<bool> postWebtoonFromBookmark(String webtoon) async {
    var data = {
      "UID": this.userid,
      "Title": webtoon
    };
    var body = json.encode(data);
    final response = await client.post(
        Uri.parse("${baseUrl}/BookMark"),
        headers: {"Content-Type": "application/json",
          "authorization":"Bearer ${token}"},
        body: body
    );
    if (response.statusCode == 200) return true;
    else{
      print(response.statusCode);
      print(response.body);
      return false;
    }
  }


  /// get search webtoon with jwt
  Future<List<Webtoon>?> fetchSearchedWebtoonList(String searchText) async {
    var response = await client.get(
      Uri.parse("${baseUrl}/WebToon/Search/$searchText"),
      headers: {"Content-Type": "application/json",
        "authorization":"Bearer ${token}"},
    );
    if(response.statusCode == 200){
      var jsonData = response.body;
      var webtoonListData = await webtoonFromJsonList(jsonData);

      print(webtoonListData);
      return webtoonListData;
    }
    else{
      print("${response.statusCode}");
      print("${response.body}");
      print("$searchText");
      return null;
    }
  }



  /// user post api
  postUserData(var data) async {
    var body = json.encode(data);
    var response = await http.Client().post(
        Uri.parse("${baseUrl}/User"),
        headers: {"Content-Type": "application/json"},
        body: body
    );
    if (response.statusCode == 200)
      return true;
    else {
      print(response.statusCode);
      print(response.body);
      return false;
    }
  }


  /// keyword post api
  postKeyword(var data) async{
    var body = json.encode(data);

    final response = await client.post(
        Uri.parse("${baseUrl}/KeyWords"),
        headers: {"Content-Type": "application/json",
        "authorization":"Bearer ${token}"},
        body: body
    );
    if (response.statusCode == 200)
      return true;
    else{
      print(response.statusCode);
      print(response.body);
      return false;
    }
  }
}