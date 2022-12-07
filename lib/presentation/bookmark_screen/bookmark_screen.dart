import 'package:application4/data/controllers/heart_controller.dart';
import 'package:application4/presentation/main_screen/controller/main_controller.dart';

import 'package:application4/presentation/bookmark_screen/controller/bookmark_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../widgets/webtoon_preview2.dart';

class BookmarkScreen extends GetWidget<BookmarkController> {
  HeartController heartController = Get.find<HeartController>();
  MainController mainController = Get.find<MainController>();
  Repository myRepository = Get.find<Repository>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("lbl23".tr),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Container(
                  child: Obx(() => Container(
                      width: size.width,
                      height: size.height,
                      padding: EdgeInsets.only(bottom: 50.0),
                      child: ListView.builder(
                          itemCount: heartController.hearts.length,
                          itemBuilder: (context, index) {
                            index = heartController.hearts.length - index-1;
                            String webtoonTitle = heartController.hearts[index];
                            return Container(
                              // 즐겨찾기 웹툰 목록들
                              child: Column(
                                children: [
                                  WebtoonPreview2(
                                    // 하트 버튼 처리 함수
                                    onPressed: (){
                                      if (heartController.hearts.contains(webtoonTitle)) {
                                        heartController.breakHeartToWebtoon(webtoonTitle);
                                      } else {
                                        heartController.heartToWebtoon(webtoonTitle);
                                      }
                                    },
                                    webtoonTitle: webtoonTitle,
                                    myRepository: myRepository,
                                    // 즐겨찾기된 웹툰이면 하트를 채움
                                    isbookmark: heartController.hearts.any((title) => title == webtoonTitle),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  )),
            )));
  }

}
