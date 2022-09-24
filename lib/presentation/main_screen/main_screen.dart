import 'controller/main_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:application4/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class MainScreen extends GetWidget<MainController> {
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
                      height: size.height,
                      width: size.width,
                      decoration: AppDecoration.fillWhiteA700,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: getMargin(
                                bottom: 10,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: double.infinity,
                                      decoration: AppDecoration.fillWhiteA700,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 153,
                                                top: 2,
                                                right: 9,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    "lbl_main".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterExtraLight25
                                                        .copyWith(),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 125,
                                                      top: 2,
                                                      bottom: 2,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup,
                                                      height: getSize(
                                                        20.00,
                                                      ),
                                                      width: getSize(
                                                        20.00,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: getVerticalSize(
                                              1.00,
                                            ),
                                            width: size.width,
                                            margin: getMargin(
                                              top: 2,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.black900,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 14,
                                        top: 17,
                                        right: 14,
                                      ),
                                      child: Text(
                                        "lbl34".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular24Black900
                                            .copyWith(),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 14,
                                      top: 44,
                                      right: 14,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          height: getVerticalSize(
                                            101.00,
                                          ),
                                          width: getHorizontalSize(
                                            125.00,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                  imagePath: ImageConstant
                                                      .imgThumbnailimag0,
                                                  height: getVerticalSize(
                                                    101.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    125.00,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                  imagePath: ImageConstant
                                                      .imgThumbnailimag0,
                                                  height: getVerticalSize(
                                                    101.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    125.00,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        CommonImageView(
                                          imagePath: ImageConstant
                                              .imgThumbnailimag0245X333,
                                          height: getVerticalSize(
                                            101.00,
                                          ),
                                          width: getHorizontalSize(
                                            125.00,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 45,
                                        top: 22,
                                        right: 45,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            height: getVerticalSize(
                                              15.00,
                                            ),
                                            width: getHorizontalSize(
                                              37.00,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "lbl25".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular12
                                                        .copyWith(),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "lbl25".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular12
                                                        .copyWith(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 126,
                                            ),
                                            child: Text(
                                              "lbl30".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular12
                                                  .copyWith(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 14,
                                      top: 76,
                                      right: 14,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CommonImageView(
                                          imagePath:
                                              ImageConstant.imgThumbnailimag01,
                                          height: getVerticalSize(
                                            101.00,
                                          ),
                                          width: getHorizontalSize(
                                            125.00,
                                          ),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            101.00,
                                          ),
                                          width: getHorizontalSize(
                                            125.00,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                  imagePath: ImageConstant.img1,
                                                  height: getVerticalSize(
                                                    101.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    125.00,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                  imagePath: ImageConstant.img1,
                                                  height: getVerticalSize(
                                                    101.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    125.00,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 14,
                                      top: 36,
                                      right: 14,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "lbl32".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular12
                                              .copyWith(),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            15.00,
                                          ),
                                          width: getHorizontalSize(
                                            59.00,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "lbl35".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular12
                                                      .copyWith(),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "lbl35".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular12
                                                      .copyWith(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 14,
                                      top: 83,
                                      right: 14,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CommonImageView(
                                          imagePath: ImageConstant.img1101X125,
                                          height: getVerticalSize(
                                            101.00,
                                          ),
                                          width: getHorizontalSize(
                                            125.00,
                                          ),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            101.00,
                                          ),
                                          width: getHorizontalSize(
                                            125.00,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                  imagePath:
                                                      ImageConstant.img11,
                                                  height: getVerticalSize(
                                                    101.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    125.00,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                  imagePath:
                                                      ImageConstant.img11,
                                                  height: getVerticalSize(
                                                    101.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    125.00,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 14,
                                      top: 26,
                                      right: 14,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "lbl36".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular12
                                              .copyWith(),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            15.00,
                                          ),
                                          width: getHorizontalSize(
                                            59.00,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "lbl37".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular12
                                                      .copyWith(),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  "lbl37".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular12
                                                      .copyWith(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomFloatingButton(
                    height: 45,
                    width: 45,
                    margin: getMargin(
                      left: 15,
                      top: 22,
                      right: 15,
                      bottom: 22,
                    ),
                    alignment: Alignment.bottomRight,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgPlus,
                      height: getVerticalSize(
                        22.50,
                      ),
                      width: getHorizontalSize(
                        22.50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
