import 'package:flutter/material.dart';

import '../data/models/flutter_hashtags.dart';
import 'package:application4/core/app_export.dart';

import '../presentation/keyword_cloud_screen/controller/keyword_cloud_controller.dart';

class ScatterItem extends StatelessWidget {
  ScatterItem(this.hashtag, this.index, this.keywordCloudController);
  final FlutterHashtag hashtag;
  final int index;
  final keywordCloudController;
  bool isOn=false;

  @override
  Widget build(BuildContext context) {
    final TextStyle? style = Theme.of(context).textTheme.bodyText1?.copyWith(
        fontSize: hashtag.size.toDouble(),
        // color: hashtag.color,
        color: Colors.black,
        height: 1.1
    );
    // 키워드 텍스트 및 버튼 설정
    return GetBuilder<KeywordCloudController>(
        builder: (_){
          return ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20.0),
                side: BorderSide(width:10, color: Colors.black.withOpacity(0)),
                foregroundColor: Colors.blue,
                // backgroundColor: hashtag.color,
                backgroundColor: isOn ? hashtag.color : Colors.white24,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                elevation: 0.0,
              ),
              onPressed: (){
                isOn = keywordCloudController.onoffKeyword(hashtag.hashtag);
              },
              child: Text(
                // hashtag.rotated ? StringUtils.addCharAtPosition(hashtag.hashtag, '\n', 1, repeat: true) :
                hashtag.hashtag,
                style: style,
              )
          );}
    );

  }
}
