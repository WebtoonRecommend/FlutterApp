import '../../widgets/scatter_item.dart';
import 'controller/keyword_cloud_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scatter/flutter_scatter.dart';

import '../../data/models/flutter_hashtags.dart';

class KeywordCloudScreen extends GetWidget<KeywordCloudController> {
  final keywordCloudController = Get.put(KeywordCloudController());

  @override
  Widget build(BuildContext context) {
    // word cloud용 변수
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
              actions: [
                // 키워드 선택완료 버튼
                TextButton(
                onPressed: () async {
                  // 선택한 키워드를 서버에 제출
                  bool issubmitted = await keywordCloudController.submitKeyword();
                  if (!issubmitted){
                    // 실패시 회원가입은 그대로 진행되고,
                    // TODO: setting에서 키워드를 다시 설정할 수 있게 해야함
                    showToast("failed to submit keyword.\nPlease set again in setting page.");
                  }
                  onTapBtnDone();
                },
                child: Text("완료",
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
              ]
            ),
            // word cloud 구현 부분
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
                          // 선택한 키워드를 리스트로 보여줌 (디버깅용)
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

