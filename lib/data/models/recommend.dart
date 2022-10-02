// To parse this JSON data, do
//
//     final recommend = recommendFromJson(jsonString);

import 'dart:convert';

List<Recommend> recommendFromJson(String str) => List<Recommend>.from(json.decode(str).map((x) => Recommend.fromJson(x)));

String recommendToJson(List<Recommend> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Recommend {
  Recommend({
    required this.id,
    required this.uid,
    required this.webtoonTitle,
  });

  int id;
  String uid;
  String webtoonTitle;

  factory Recommend.fromJson(Map<String, dynamic> json) => Recommend(
    id: json["ID"],
    uid: json["UID"],
    webtoonTitle: json["WebtoonTitle"],
  );

  Map<String, dynamic> toJson() => {
    "ID": id,
    "UID": uid,
    "WebtoonTitle": webtoonTitle,
  };
}
