import 'dart:ui';

import 'package:flutter/painting.dart';

class FlutterHashtag {
  const FlutterHashtag(
      this.hashtag,
      this.color,
      this.size,
      this.rotated,
      );
  final String hashtag;
  final Color color;
  final int size;
  final bool rotated;
}

class FlutterColors {
  const FlutterColors._();

  static const Color yellow = Color(0xFFFFC108);

  static const Color white = Color(0xFFFFFFFF);

  static const Color blue400 = Color(0xFF13B9FD);
  static const Color blue600 = Color(0xFF0175C2);
  static const Color blue = Color(0xFF02569B);

  static const Color gray100 = Color(0xFFD5D7DA);
  static const Color green = Color(0xFF69C210);
  static const Color gray = Color(0xFF202124);
}

const List<FlutterHashtag> kFlutterHashtags = const <FlutterHashtag>[
  FlutterHashtag('#에피소드', FlutterColors.yellow, 50, true),
  FlutterHashtag('#옴니버스', FlutterColors.gray100, 40, false),
  FlutterHashtag('#스토리', FlutterColors.blue600, 40, true),
  FlutterHashtag('#일상', FlutterColors.green, 40, false),
  FlutterHashtag('#개그', FlutterColors.blue400, 50, false),
  FlutterHashtag('#판타지', FlutterColors.blue600, 42, true),
  FlutterHashtag('#액션', FlutterColors.gray100, 50, true),
  FlutterHashtag('#드라마', FlutterColors.blue, 36, false),
  FlutterHashtag('#순정', FlutterColors.blue400, 44, false),
  FlutterHashtag('#감성', FlutterColors.green, 43, true),
  FlutterHashtag('#스릴러', FlutterColors.green, 32, false),
  FlutterHashtag('#무협/사극', FlutterColors.gray100, 50, false),
  FlutterHashtag('#스포츠', FlutterColors.blue600, 40, false),
  // FlutterHashtag('#스토리', FlutterColors.blue600, 40, true),
  // FlutterHashtag('#병맛', FlutterColors.blue, 50, false),
  // FlutterHashtag('#몽롱', FlutterColors.green, 43, false),
  // FlutterHashtag('#감동', FlutterColors.yellow, 44, false),
  // FlutterHashtag('#장기연재', FlutterColors.blue400, 43, true),
  // FlutterHashtag('#대학교', FlutterColors.green, 52, true),
  // FlutterHashtag('#대학원', FlutterColors.blue600, 40, false),
  // FlutterHashtag('#판타지', FlutterColors.gray100, 42, false),
  // FlutterHashtag('#FlutterGuestStar', FlutterColors.blue600, 34, false),
  // FlutterHashtag('#FlutterBestDayOfTheWeek', FlutterColors.gray, 12, true),
  // FlutterHashtag('#FlutterIsMyBFF', FlutterColors.gray, 20, false),
  // FlutterHashtag('#FlutterIsComing', FlutterColors.yellow, 44, false),
  // FlutterHashtag('#FlutterMakers', FlutterColors.blue, 32, true),
  // FlutterHashtag('#FlutterLiveInvite', FlutterColors.blue, 40, false),
  // FlutterHashtag('#FlutterPower', FlutterColors.blue400, 32, false),
  // FlutterHashtag('#FlutterCat', FlutterColors.blue, 20, true),
  // FlutterHashtag('#FlutterExcellent', FlutterColors.gray, 24, true),
  // FlutterHashtag('#FlutterIsAwesome', FlutterColors.blue, 26, false),
  // FlutterHashtag('#FlutterExcited', FlutterColors.blue600, 28, false),
  // FlutterHashtag('#FlutterReady', FlutterColors.gray, 36, true),
  // FlutterHashtag('#FlutterRennes', FlutterColors.blue, 36, false),
  // FlutterHashtag('#FlutterLiveRegistration', FlutterColors.blue400, 40, false),
  // FlutterHashtag('#FlutterLiveTicket', FlutterColors.blue, 36, false),
  // FlutterHashtag('#FlutterDreamComeTrue', FlutterColors.blue400, 20, false),
  // FlutterHashtag('#SeeYouLiveAtFlutterLive', FlutterColors.blue, 12, false),
  // FlutterHashtag('#GoodFlutterNews', FlutterColors.blue, 14, false),
  // FlutterHashtag('#FlutterIsSoGreat', FlutterColors.blue, 20, false),
  // FlutterHashtag('#FlutterUsers', FlutterColors.blue, 30, false),
  // FlutterHashtag('#FlutterSpeakers', FlutterColors.blue, 22, true),
  // FlutterHashtag('#FlutterSwag', FlutterColors.blue, 34, false),
  // FlutterHashtag('#Flutter40K', FlutterColors.yellow, 50, false),
];