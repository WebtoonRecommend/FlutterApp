import 'package:application4/data/controllers/heart_controller.dart';
import 'package:application4/data/models/webtoon.dart';
import 'package:application4/presentation/main_screen/controller/main_controller.dart';

import 'controller/bookmark_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

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
            backgroundColor: ColorConstant.whiteA700,
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
                                  SizedBox(height: 30,),
                                  GestureDetector(
                                    // 즐겨찾기 웹툰 제목을 클릭하면 detail 페이지로 넘어간다.
                                    onTap: () async {
                                      // repository에 있는 webtoonlist에서 원하는 웹툰을 찾음
                                      bool isloaded = myRepository.webtoonList.keys.any(
                                              (title)=>title == webtoonTitle);

                                      Webtoon? webtoon;
                                      // 찾으려는 즐겨찾기 웹툰이 존재 하는 않는 경우,
                                      // 한 번 더 로드해보고, 그래도 없으면 toast로 알린다.
                                      if (!isloaded) webtoon = await mainController.loadWebtoon(webtoonTitle);
                                      else webtoon = myRepository.webtoonList[webtoonTitle];

                                      // 존재하면 detail 페이지로 넘어간다.
                                      if (webtoon!=null) {
                                        Get.toNamed(AppRoutes.detailScreen, arguments:webtoon);
                                      }
                                      else{
                                        print(webtoon);
                                        showToast("webtoon not found!");
                                      }
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      // 즐겨찾기 제목
                                      child: Text(
                                        "${webtoonTitle}",
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

}
