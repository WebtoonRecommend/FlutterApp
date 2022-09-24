import 'controller/main_next_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:application4/widgets/custom_floating_button.dart';
import 'package:application4/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class MainNextScreen extends GetWidget<MainNextController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      decoration: AppDecoration.fillWhiteA700,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    width: double.infinity,
                                                    decoration: AppDecoration
                                                        .fillWhiteA700,
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              153,
                                                                          top:
                                                                              2,
                                                                          right:
                                                                              9),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                            "lbl_main"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterExtraLight25.copyWith()),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 125,
                                                                                top: 2,
                                                                                bottom: 2),
                                                                            child: CommonImageView(svgPath: ImageConstant.imgGroup, height: getSize(20.00), width: getSize(20.00)))
                                                                      ]))),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width: size.width,
                                                              margin: getMargin(
                                                                  top: 2),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .black900))
                                                        ]))),
                                            CustomIconButton(
                                                height: 45,
                                                width: 45,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 543,
                                                    right: 23),
                                                alignment:
                                                    Alignment.centerRight,
                                                onTap: () {
                                                  onTapBtntf();
                                                },
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgTrophy)),
                                            CustomIconButton(
                                                height: 45,
                                                width: 45,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 7,
                                                    right: 23),
                                                alignment:
                                                    Alignment.centerRight,
                                                child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgUser)),
                                            CustomIconButton(
                                                height: 45,
                                                width: 45,
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 7,
                                                    right: 23,
                                                    bottom: 78),
                                                alignment:
                                                    Alignment.centerRight,
                                                onTap: () {
                                                  onTapBtntf1();
                                                },
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgVector))
                                          ]))),
                              CustomFloatingButton(
                                  height: 45,
                                  width: 45,
                                  margin: getMargin(
                                      left: 23, top: 26, right: 23, bottom: 26),
                                  alignment: Alignment.bottomRight,
                                  onTap: () {
                                    onTapBtntf2();
                                  },
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgClose,
                                      height: getVerticalSize(22.50),
                                      width: getHorizontalSize(22.50)))
                            ]))))));
  }

  onTapBtntf() {
    Get.toNamed(AppRoutes.androidLargeFourScreen);
  }

  onTapBtntf1() {
    Get.toNamed(AppRoutes.bookmarkScreen);
  }

  onTapBtntf2() {
    Get.toNamed(AppRoutes.mainTwoScreen);
  }
}
