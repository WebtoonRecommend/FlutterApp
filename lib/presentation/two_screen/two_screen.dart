import 'controller/two_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

class TwoScreen extends GetWidget<TwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        left: 143,
                        top: 3,
                        right: 6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "lbl_main".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular32.copyWith(),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 109,
                              top: 1,
                              bottom: 1,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgIcons8setting,
                              height: getVerticalSize(
                                30.00,
                              ),
                              width: getHorizontalSize(
                                32.00,
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
                      top: 3,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.black9007f,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 15,
                        top: 27,
                        right: 15,
                      ),
                      child: Text(
                        "lbl34".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular24Black900.copyWith(),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        125.00,
                      ),
                      margin: getMargin(
                        left: 15,
                        top: 239,
                        right: 15,
                        bottom: 20,
                      ),
                      decoration: AppDecoration.outlineBlack9003f,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CommonImageView(
                              imagePath: ImageConstant.imgThumbnailimag0245X333,
                              height: getVerticalSize(
                                101.00,
                              ),
                              width: getHorizontalSize(
                                125.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 22,
                              right: 22,
                            ),
                            child: Text(
                              "lbl30".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular12.copyWith(),
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
        ),
      ),
    );
  }
}
