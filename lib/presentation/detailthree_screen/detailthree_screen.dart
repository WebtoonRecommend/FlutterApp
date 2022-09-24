import 'controller/detailthree_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:application4/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailthreeScreen extends GetWidget<DetailthreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: size.height,
              width: size.width,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: getMargin(
                        bottom: 10,
                      ),
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
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: size.width,
                                      margin: getMargin(
                                        left: 13,
                                        top: 2,
                                        right: 13,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 12,
                                              bottom: 9,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgArrow1,
                                              height: getVerticalSize(
                                                3.00,
                                              ),
                                              width: getHorizontalSize(
                                                26.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 70,
                                            ),
                                            child: Text(
                                              "lbl24".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterExtraLight25
                                                  .copyWith(),
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
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                left: 14,
                                top: 12,
                                right: 14,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 19,
                                      bottom: 5,
                                    ),
                                    child: Text(
                                      "lbl32".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterExtraLight25
                                          .copyWith(),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 74,
                                    ),
                                    decoration:
                                        AppDecoration.fillLightblue100.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder24,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 11,
                                            top: 5,
                                            right: 11,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgStar11,
                                            height: getSize(
                                              27.00,
                                            ),
                                            width: getSize(
                                              27.00,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 11,
                                            top: 1,
                                            right: 11,
                                            bottom: 4,
                                          ),
                                          child: Text(
                                            "lbl_77".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInknutAntiquaLight12
                                                .copyWith(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                245.00,
                              ),
                              width: getHorizontalSize(
                                333.00,
                              ),
                              margin: getMargin(
                                left: 13,
                                top: 4,
                                right: 13,
                              ),
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          35.00,
                                        ),
                                      ),
                                      child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgThumbnailimag0,
                                        height: getVerticalSize(
                                          245.00,
                                        ),
                                        width: getHorizontalSize(
                                          333.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          35.00,
                                        ),
                                      ),
                                      child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgThumbnailimag01,
                                        height: getVerticalSize(
                                          245.00,
                                        ),
                                        width: getHorizontalSize(
                                          333.00,
                                        ),
                                      ),
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
                                left: 34,
                                top: 46,
                                right: 34,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "lbl26".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterExtraLight25
                                          .copyWith(),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 106,
                                      top: 1,
                                    ),
                                    child: Text(
                                      "lbl33".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterExtraLight25
                                          .copyWith(),
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
                                left: 19,
                                top: 27,
                                right: 19,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                      bottom: 2,
                                    ),
                                    child: Text(
                                      "lbl27".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterExtraLight25
                                          .copyWith(),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 56,
                                      bottom: 7,
                                    ),
                                    child: RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 0,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
                                      itemSize: getVerticalSize(
                                        23.00,
                                      ),
                                      unratedColor: ColorConstant.bluegray100,
                                      itemCount: 5,
                                      updateOnDrag: true,
                                      onRatingUpdate: (rating) {},
                                      itemBuilder: (context, _) {
                                        return Icon(
                                          Icons.star,
                                          color: ColorConstant.limeA400,
                                        );
                                      },
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
                                left: 22,
                                top: 27,
                                right: 22,
                              ),
                              child: Text(
                                "lbl28".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterExtraLight25.copyWith(),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: getHorizontalSize(
                                212.00,
                              ),
                              margin: getMargin(
                                left: 30,
                                top: 16,
                                right: 30,
                              ),
                              child: Text(
                                "msg3".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterExtraLight16.copyWith(),
                              ),
                            ),
                          ),
                          CustomButton(
                            width: 194,
                            text: "lbl29".tr,
                            margin: getMargin(
                              left: 13,
                              top: 166,
                              right: 13,
                            ),
                            variant: ButtonVariant.FillGreen300,
                            shape: ButtonShape.Square,
                            fontStyle: ButtonFontStyle.InterExtraLight15,
                            alignment: Alignment.center,
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
