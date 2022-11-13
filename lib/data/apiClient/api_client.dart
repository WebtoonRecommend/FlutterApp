import 'dart:convert';

import 'package:application4/core/app_export.dart';
import 'package:http/http.dart' as http;

import 'package:application4/data/models/user.dart';
import 'package:application4/data/models/bookmark.dart';
import 'package:application4/data/models/recommend.dart';
import 'package:application4/data/models/webtoon.dart';


/// api 통신 담당자
class ApiClient {
  static var client = http.Client();
  static const baseUrl = Constants.baseUrl;

  var userid = "";
  var token = "";

  setUserid(String userid) {
    this.userid = userid;
  }
  setToken(String token) {
    this.token = token;
  }




  // api 결과값에 개행문자 붙여서 나옴

  // 함수의 이름은 api 명에서 따옴
  // 예를 들어, postUserwithUserid는 http://ipAdress/User/userid 요청을 함

  /// User/userid post api
  postUserwithUserid(String passwd) async {
    // id, pw가 일치하는지 확인
    print("postUserapi-$userid,$passwd");
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

  /// User/userid get api
  Future<User?> getUserwithUserid() async {
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

  /// Recommended/userid get api
  Future<List<Recommend>?> getRecommendedwithUserid() async {
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

  /// Webtoon/webtoonTitle get api
  Future<Webtoon?> getWebToonwithTitle(String webtoonTitle) async {
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

  /// BookMark/userid get api
  Future<List<Bookmark>?> getBookMarkwithUserid() async{
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

  /// BookMark/userid/webtoon delete api
  Future<bool> deleteBookMarkwithUseridandTitle(String webtoon) async {
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

  /// BookMark post api
  Future<bool> postBookMark(String webtoon) async {
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


  /// WebToon/Search/searchText get webtoon
  Future<List<Webtoon>?> getWebtoonSearchwithSearchText(String searchText) async {
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



  /// User post api
  postUser(var data) async {
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


  /// KeyWords post api
  postKeyWords(var data) async{
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
