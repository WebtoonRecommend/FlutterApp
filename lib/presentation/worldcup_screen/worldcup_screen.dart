import 'controller/worldcup_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

class WorldcupScreen extends GetWidget<WorldcupController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: Container(
            width: size.width,
            height: size.height,
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [

                Expanded(
                  flex: 1,
                  child: Container(
                    width: size.width,
                    decoration: AppDecoration.fillWhiteA700,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: AppDecoration.outlineBlack900,
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text(
                                "lbl_round".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtInterRegular25.copyWith(),
                              ),
                            ),
                            Container(
                              padding: getPadding(
                                left: 30,
                                top: 2,
                                bottom: 2,
                              ),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text(
                                "lbl_162".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtInterRegular25.copyWith(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: GestureDetector(
                    onTap: (){},
                    child: CommonImageView(
                      imagePath: ImageConstant.imgFrame10,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    "lbl_vs".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular40.copyWith(),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: GestureDetector(
                    onTap: (){},
                    child: CommonImageView(
                      imagePath: ImageConstant.imgFrame11,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
