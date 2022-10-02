// To parse this JSON data, do
//
//     final bookmark = bookmarkFromJson(jsonString);

import 'dart:convert';

List<Bookmark> bookmarkFromJson(String str) => List<Bookmark>.from(json.decode(str).map((x) => Bookmark.fromJson(x)));

String bookmarkToJson(List<Bookmark> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Bookmark {
  Bookmark({
    required this.id,
    required this.uid,
    required this.webtoonTitle,
  });

  int id;
  String uid;
  String webtoonTitle;

  factory Bookmark.fromJson(Map<String, dynamic> json) => Bookmark(
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
