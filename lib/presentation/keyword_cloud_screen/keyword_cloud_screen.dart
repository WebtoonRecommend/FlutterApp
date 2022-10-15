import 'controller/keyword_cloud_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scatter/flutter_scatter.dart';

import 'models/flutter_hashtags.dart';

class KeywordCloudScreen extends GetWidget<KeywordCloudController> {
  final keywordCloudController = Get.put(KeywordCloudController(userid: Get.arguments));

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = <Widget>[];
    for (var i = 0; i < kFlutterHashtags.length; i++) {
      widgets.add(ScatterItem(kFlutterHashtags[i], i, keywordCloudController));
    }

    final screenSize = MediaQuery.of(context).size;
    final ratio = screenSize.width / screenSize.height;

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("키워드 선택"),
              centerTitle: true,
              automaticallyImplyLeading: false,
              actions: [TextButton(
                onPressed: () async {
                  await keywordCloudController.submitKeyword();
                  onTapBtnDone();
                },
                child: Text("완료",
                style: TextStyle(
                  color: Colors.white
                ),),
              ),]
            ),
            body: Container(
                width: size.width,
                height: size.height,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Center(
                  child: FittedBox(
                    child: Column(
                        children: [
                          Scatter(
                            fillGaps: false,
                            delegate: ArchimedeanSpiralScatterDelegate(ratio: ratio,a: 5,b: 30),
                            children: widgets.sublist(0,7),
                          ),
                          Scatter(
                            fillGaps: false,
                            delegate: ArchimedeanSpiralScatterDelegate(ratio: ratio,a: 5, b: 30),
                            children: widgets.sublist(7,14),
                          ),
                          Scatter(
                            fillGaps: false,
                            delegate: ArchimedeanSpiralScatterDelegate(ratio: ratio,a: 5, b: 30),
                            children: widgets.sublist(14,21),
                          ),
                          Obx(()=>Offstage(
                              // obx 함수가 Rx variable in the root scope of the callback의 변화만 탐지하기 때문에 새로 만들어줌
                              offstage: true,
                              child: SingleChildScrollView(
                                child: Container(
                                  width: size.width,
                                  height: 300,
                                  child: ListView.builder(
                                      itemCount: keywordCloudController.keywords.length,
                                      itemBuilder: (context, index) {
                                        return Text(
                                          "${keywordCloudController.keywords[index]}",
                                          style: TextStyle(
                                              fontSize: 25, color: Colors.blue),
                                        );
                                      }),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
            )
        );
  }

  onTapBtnDone() {
    Get.offAllNamed(AppRoutes.mainScreen, arguments: Get.arguments);
  }
}

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
