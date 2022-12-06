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
  var passwd = "";
  // TODO: 추천만료
  var days = "0";

  setUserid(String userid) {
    this.userid = userid;
  }
  setToken(String token) {
    this.token = token;
  }
  setPasswd(String passwd){
    this.passwd = passwd;
  }
  setDays(String days){
    this.days = days;
  }

  printResponse(var response){
    print(response.request);
    print(response.statusCode);
    print(response.body);
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
    printResponse(response);
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
    printResponse(response);
    if(response.statusCode == 200){
      var jasonData = response.body;
      return userFromJson(jasonData);
    }
    else{
      return null;
    }
  }

  /// Recommended get api
  Future<List<Recommend>?> getRecommended() async {
    var response = await client.get(
      Uri.parse("${baseUrl}/Recommended/${days}"),
      headers: {"Content-Type": "application/json",
        "authorization":"Bearer ${token}"},
    );
    printResponse(response);

    if(response.statusCode == 200){
      var jasonData = response.body;
      return recommendFromJson(jasonData);
    }
    else{
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
    printResponse(response);

    if(response.statusCode == 200){
      var jsonData = response.body;
      var webtoonData = webtoonFromJson(jsonData);

      return webtoonData;
    }
    else {
      return null;
    }
  }

  /// BookMark get api
  Future<List<Bookmark>?> getBookMark() async{
    var response = await client.get(
      Uri.parse("${baseUrl}/BookMark"),
      headers: {"Content-Type": "application/json",
        "authorization":"Bearer ${token}"},
    );
    printResponse(response);
    if(response.statusCode == 200){
      var jsonData = response.body;
      return bookmarkFromJson(jsonData);
    }
    else{
      return null;
    }
  }

  /// BookMark/webtoon delete api
  Future<bool> deleteBookMarkwithTitle(String webtoon) async {
    var response = await client.delete(
      Uri.parse("${baseUrl}/BookMark/${webtoon}"),
      headers: {"Content-Type": "application/json",
        "authorization":"Bearer ${token}"},
    );
    printResponse(response);
    if (response.statusCode == 200) return true;
    else{
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
    printResponse(response);
    if (response.statusCode == 200) return true;
    else{
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
    print("검색어: $searchText");
    printResponse(response);
    if(response.statusCode == 200){
      var jsonData = response.body;
      var webtoonListData = await webtoonFromJsonList(jsonData);

      print(webtoonListData);
      return webtoonListData;
    }
    else{
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
    printResponse(response);
    if (response.statusCode == 200)
      return true;
    else {
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
    printResponse(response);
    if (response.statusCode == 200)
      return true;
    else{
      return false;
    }
  }





}
