import 'dart:convert';

import 'package:application4/core/app_export.dart';
import 'package:application4/data/models/user.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController{
  var userid = "".obs();
  var user = User(ID:"").obs();

  updateID(var userid){
    /*userid 등록 함수*/
    this.userid = userid;
  }

  Future<bool> updateUser() async {
    /* User 클래스 데이터 등록 함수
    * 이 함수 호출하기 전에 updateID함수 호출해야 함*/

    //서버에서 userid 검색후 유저관련 정보 가져옴
    var userTmp = await fetchUserData();
    if (userTmp!=null){
      this.user = userTmp;
      print(this.user.ID);
      return true;
    }
    else return false;
  }

  isValid(String passwd) async {
    var data = {"PassWd":passwd};
    var body = json.encode(data);
    var response = await http.Client().post(
        Uri.parse("http://3.39.22.234/User/${this.userid}"),
        headers: {"Content-Type": "application/json"},
        body: body
    );
    print("${response.body}");
    return int.parse(response.body);
  }

  Future<User?> fetchUserData() async {
    var response = await http.Client().get(Uri.parse("http://3.39.22.234/User/${this.userid}"));

    if(response.statusCode == 200){
      var jasonData = response.body;
      return userFromJson(jasonData);

    }
    else{
      return null;
    }
  }
}