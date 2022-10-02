import 'dart:convert';

import 'package:application4/core/app_export.dart';
import 'package:application4/data/controllers/user_controller.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.ID,
    this.age,
    this.job,
    this.sex,
  });

  String ID;
  dynamic age;
  dynamic job;
  dynamic sex;

  factory User.fromJson(Map<String, dynamic> json) => User(
    ID: Get.find<UserController>().userid,
    age: json["Age"],
    job: json["Job"],
    sex: json["Sex"],
  );

  Map<String, dynamic> toJson() => {
    "Age": age,
    "Job": job,
    "Sex": sex,
  };
}
