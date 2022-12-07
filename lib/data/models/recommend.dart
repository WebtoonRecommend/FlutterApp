import 'dart:convert';

List<Recommend> recommendFromJson(String str) => List<Recommend>.from(json.decode(str).map((x) => Recommend.fromJson(x)));

String recommendToJson(List<Recommend> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Recommend {
  Recommend({
    required this.star,
    required this.webtoonTitle,
  });

  String star;
  String webtoonTitle;

  /// json to Recommend class 함수
  factory Recommend.fromJson(List<dynamic> json) => Recommend(
    star: json[0].toString(),
    webtoonTitle: json[1],
  );

  /// Recommend class to json 함수
  Map<String, dynamic> toJson() => {
    "star": star,
    "WebtoonTitle": webtoonTitle,
  };
}
