import 'controller/main_card_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:application4/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class MainCardScreen extends GetWidget<MainCardController> {
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: double.infinity,
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterExtraLight25
                                                .copyWith(),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 125,
                                              top: 2,
                                              bottom: 2,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgGroup,
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
                                left: 13,
                                top: 23,
                                right: 13,
                              ),
                              child: Text(
                                "lbl34".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular24Black900
                                    .copyWith(),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 13,
                                top: 253,
                                right: 13,
                              ),
                              child: CommonImageView(
                                imagePath:
                                    ImageConstant.imgThumbnailimag0245X333,
                                height: getVerticalSize(
                                  101.00,
                                ),
                                width: getHorizontalSize(
                                  125.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 13,
                                top: 22,
                                right: 13,
                                bottom: 331,
                              ),
                              child: Text(
                                "lbl30".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular12.copyWith(),
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
                      left: 23,
                      top: 26,
                      right: 23,
                      bottom: 26,
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
