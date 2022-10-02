import 'package:application4/data/controllers/heart_controller.dart';
import 'package:application4/data/models/webtoon.dart';
import 'package:application4/presentation/main_screen/controller/main_controller.dart';
import 'package:application4/presentation/signup_screen/signup_screen.dart';

import 'controller/bookmark_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends GetWidget<BookmarkController> {
  HeartController heartController = Get.find<HeartController>();
  MainController mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("lbl23".tr),
              centerTitle: true,
            ),
            backgroundColor: ColorConstant.whiteA700,
            body: SingleChildScrollView(
              child: Container(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                    Offstage(
                      // obx 함수가 Rx variable in the root scope of the callback의 변화만 탐지하기 때문에 새로 만들어줌
                      offstage: false,
                      child: SingleChildScrollView(
                        child: Obx(() => Container(
                            width: size.width,
                            height: 300,
                            child: ListView.builder(
                                itemCount: heartController.hearts.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 30,),
                                        GestureDetector(
                                          onTap: () async {
                                            bool isnotloaded = mainController.webtoonList.where(
                                                    (e)=>e.webtoonName==heartController.hearts[index]).isEmpty;
                                            Webtoon? webtoon;
                                            if (isnotloaded) {
                                              webtoon = await mainController.fetchWebtoon(
                                                      heartController
                                                          .hearts[index]);
                                            }
                                            else{
                                              webtoon = mainController.webtoonList.where(
                                                      (e)=>e.webtoonName==heartController.hearts[index]).first;
                                            }

                                            if (webtoon!=null) {
                                              Get.toNamed(
                                                  AppRoutes.detailScreen,
                                                  arguments:webtoon
                                              );
                                            }
                                            else{
                                              print(webtoon);
                                              showToast("webtoon not found!");
                                            }
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "${heartController.hearts[index]}",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtInterExtraLight25.copyWith(),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ),
                    ),
                  ])),
            )));
  }

  onTapTxttf() {
    Get.toNamed(AppRoutes.detailScreen);
  }

  onTapTxttf1() {
    Get.toNamed(AppRoutes.detailtwoScreen);
  }

  onTapTxttf2() {
    Get.toNamed(AppRoutes.detailthreeScreen);
  }
}
