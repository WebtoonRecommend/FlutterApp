import 'dart:convert';

List<Keyword> keywordFromJson(String str) => List<Keyword>.from(json.decode(str).map((x) => Keyword.fromJson(x)));
String keywordToJson(List<Keyword> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class Keyword {
  Keyword({
    required this.id,
    required this.uid,
    required this.word,
  });

  int id;
  String uid;
  String word;

  /// json to Keyword class 함수
  factory Keyword.fromJson(Map<String, dynamic> json) => Keyword(
    id: json["ID"],
    uid: json["UID"],
    word: json["Word"],
  );

  /// Keyword class to json 함수
  Map<String, dynamic> toJson() => {
    "ID": id,
    "UID": uid,
    "Word": word,
  };
}
