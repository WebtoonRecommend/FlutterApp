import 'dart:convert';

import 'package:application4/data/models/user.dart';
import 'package:http/http.dart' as http;



/// instance 저장하는 친구?
class MyRepository {
  static var client = http.Client();
  var userid = "";
  var token = "";

  //api 결과값에 개행문자 붙여서 나옴
  /// repository에 token을 등록
  getJWT(String passwd) async {
    // id, pw가 일치하는지 확인
    var data = {"PassWd":passwd};
    var body = json.encode(data);
    var response = await client.post(
        Uri.parse("http://3.39.22.234/User/${this.userid}"),
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
      Uri.parse("http://3.39.22.234/User/${this.userid}"),
      headers: {"Content-Type": "application/json",
        "authorization":"Bearer ${token}"},
    );
    if(response.statusCode == 200){
      var jasonData = response.body;
      return userFromJson(jasonData);
    }
    else{
      return null;
    }
  }



}