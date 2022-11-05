import 'dart:convert';

import 'package:application4/core/app_export.dart';
import 'package:application4/data/controllers/user_controller.dart';
import 'package:application4/data/repository/post_repository.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.ID,
    this.age,
    this.job,
    this.sex,
    this.token,
  });

  String ID;
  dynamic age;
  dynamic job;
  dynamic sex;
  dynamic token;

  factory User.fromJson(Map<String, dynamic> json) => User(
    ID: Get.find<MyRepository>().userid,
    age: json["Age"],
    job: json["Job"],
    sex: json["Sex"],
    token: Get.find<MyRepository>().token,
  );

  Map<String, dynamic> toJson() => {
    "Age": age,
    "Job": job,
    "Sex": sex,
  };
}
