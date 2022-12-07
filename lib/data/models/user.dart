import 'dart:convert';

import 'package:application4/core/app_export.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.ID,
    this.passwd,
    this.age,
    this.job,
    this.sex,
    this.token,
  });

  String ID;
  dynamic passwd;
  dynamic age;
  dynamic job;
  dynamic sex;
  dynamic token;


  /// json to User class 함수
  factory User.fromJson(Map<String, dynamic> json) => User(
    // repository에서 id, token 가져옴
    ID: Get.find<Repository>().userid,
    age: json["Age"],
    job: json["Job"],
    sex: json["Sex"],
    token: Get.find<Repository>().token,
  );

  /// User class to json 함수
  Map<String, dynamic> toJson() => {
    "Age": age,
    "Job": job,
    "Sex": sex,
  };
}
