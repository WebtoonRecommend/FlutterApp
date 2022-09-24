import 'controller/android_large_four_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:application4/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AndroidLargeFourScreen extends GetWidget<AndroidLargeFourController> {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                      ),
                      child: Padding(
                        padding: getPadding(
                          right: 58,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: AppDecoration.fillCyan50,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 68,
                                      top: 2,
                                      right: 68,
                                    ),
                                    child: Text(
                                      "lbl17".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterExtraLight25
                                          .copyWith(),
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                    width: getHorizontalSize(
                                      180.00,
                                    ),
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
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 2,
                              ),
                              child: Text(
                                "lbl18".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterExtraLight25Gray400
                                    .copyWith(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomButton(
                    width: 240,
                    text: "lbl19".tr,
                    margin: getMargin(
                      left: 55,
                      top: 41,
                      right: 55,
                    ),
                    variant: ButtonVariant.FillWhiteA700,
                    shape: ButtonShape.Square,
                    padding: ButtonPadding.PaddingAll15,
                    fontStyle: ButtonFontStyle.InterBold30,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 55,
                      top: 62,
                      right: 55,
                      bottom: 20,
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgCarousel,
                      height: getSize(
                        250.00,
                      ),
                      width: getSize(
                        250.00,
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
