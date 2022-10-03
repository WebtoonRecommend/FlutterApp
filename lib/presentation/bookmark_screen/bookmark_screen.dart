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
                  child: Obx(() => Container(
                      width: size.width,
                      height: size.height,
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
                  )),
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
