import 'dart:convert';
List<Webtoon> webtoonFromJsonList(String str) => List<Webtoon>.from(json.decode(str).map((x) => Webtoon.fromJson(x)));
String webtoonToJsonList(List<Webtoon> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

Webtoon webtoonFromJson(String str) => Webtoon.fromJson(json.decode(str));
String webtoonToJson(Webtoon data) => json.encode(data.toJson());

class Webtoon{
  final String webtoonName;
  final String webtoonist;
  final String webtoonDescription;
  final String webtoonGenre;
  final String webtoonAge;
  final String webtoonEpisode;
  final String webtoonEnd;
  final String webtoonFlatform;
  final String webtoonLink;
  final String webtoonThumbnail;
  final String webtoonImagelink;
  final String webtoonStarRating;

  Webtoon({
    required this.webtoonName,
    required this.webtoonist,
    required this.webtoonDescription,
    required this.webtoonGenre,
    required this.webtoonAge,
    required this.webtoonEpisode,
    required this.webtoonEnd,
    required this.webtoonFlatform,
    required this.webtoonLink,
    required this.webtoonThumbnail,
    required this.webtoonImagelink,
    required this.webtoonStarRating,
  });

//  json to class 함수 생성하기
// main_controller.dart 참고
  factory Webtoon.fromJson(Map<String, dynamic> json) => Webtoon(
    webtoonName: json["이름"],
    webtoonist: json["작가"],
    webtoonDescription: json["설명"],
    webtoonGenre: json["장르"],
    webtoonAge: json["이용가"],
    webtoonEpisode: json["회차"],
    webtoonEnd: json["완결"],
    webtoonFlatform: json["플랫폼"],
    webtoonLink: json["링크"],
    webtoonThumbnail: json["썸네일"],
    webtoonImagelink: json["이미지링크"],
    webtoonStarRating: json["별점"],
  );

  Map<String, dynamic> toJson() => {
    "이름": webtoonName,
    "작가": webtoonist,
    "설명": webtoonDescription,
    "장르": webtoonGenre,
    "이용가": webtoonAge,
    "회차": webtoonEpisode,
    "완결": webtoonEnd,
    "플랫폼": webtoonFlatform,
    "링크": webtoonLink,
    "이미지링크": webtoonImagelink,
    "별점": webtoonStarRating,
    "썸네일": webtoonThumbnail,
  };
}
