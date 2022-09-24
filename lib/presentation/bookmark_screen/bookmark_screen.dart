import 'controller/bookmark_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends GetWidget<BookmarkController> {
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
                        GestureDetector(
                            onTap: () {
                              onTapTxttf();
                            },
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("lbl_1".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterExtraLight25
                                        .copyWith()))),
                        SizedBox(height: 50.0,),
                        GestureDetector(
                            onTap: () {
                              onTapTxttf1();
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("lbl_22".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraLight25
                                      .copyWith()),
                            )),
                        SizedBox(height: 50.0,),
                        GestureDetector(
                            onTap: () {
                              onTapTxttf2();
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("lbl_32".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraLight25
                                      .copyWith()),
                            )),
                        SizedBox(height: 50.0,),
                        GestureDetector(
                            onTap: () {
                              onTapTxttf();
                            },
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("lbl_1".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterExtraLight25
                                        .copyWith()))),
                        SizedBox(height: 50.0,),
                        GestureDetector(
                            onTap: () {
                              onTapTxttf1();
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("lbl_22".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraLight25
                                      .copyWith()),
                            )),
                        SizedBox(height: 50.0,),
                        GestureDetector(
                            onTap: () {
                              onTapTxttf2();
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("lbl_32".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraLight25
                                      .copyWith()),
                            )),
                        SizedBox(height: 50.0,),GestureDetector(
                            onTap: () {
                              onTapTxttf();
                            },
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("lbl_1".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterExtraLight25
                                        .copyWith()))),
                        SizedBox(height: 50.0,),
                        GestureDetector(
                            onTap: () {
                              onTapTxttf1();
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("lbl_22".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraLight25
                                      .copyWith()),
                            )),
                        SizedBox(height: 50.0,),
                        GestureDetector(
                            onTap: () {
                              onTapTxttf2();
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("lbl_32".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraLight25
                                      .copyWith()),
                            )),
                        SizedBox(height: 50.0,),GestureDetector(
                            onTap: () {
                              onTapTxttf();
                            },
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("lbl_1".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterExtraLight25
                                        .copyWith()))),
                        SizedBox(height: 50.0,),
                        GestureDetector(
                            onTap: () {
                              onTapTxttf1();
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("lbl_22".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraLight25
                                      .copyWith()),
                            )),
                        SizedBox(height: 50.0,),
                        GestureDetector(
                            onTap: () {
                              onTapTxttf2();
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("lbl_32".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraLight25
                                      .copyWith()),
                            )),
                        SizedBox(height: 50.0,),GestureDetector(
                            onTap: () {
                              onTapTxttf();
                            },
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("lbl_1".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterExtraLight25
                                        .copyWith()))),
                        SizedBox(height: 50.0,),
                        GestureDetector(
                            onTap: () {
                              onTapTxttf1();
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("lbl_22".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraLight25
                                      .copyWith()),
                            )),
                        SizedBox(height: 50.0,),
                        GestureDetector(
                            onTap: () {
                              onTapTxttf2();
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("lbl_32".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraLight25
                                      .copyWith()),
                            )),
                        SizedBox(height: 50.0,),
                      ])),
            )));
  }

  onTapTxttf() {
    Get.toNamed(AppRoutes.detailoneScreen);
  }

  onTapTxttf1() {
    Get.toNamed(AppRoutes.detailtwoScreen);
  }

  onTapTxttf2() {
    Get.toNamed(AppRoutes.detailthreeScreen);
  }
}
