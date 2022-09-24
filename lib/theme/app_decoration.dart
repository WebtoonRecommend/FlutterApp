import 'package:flutter/material.dart';
import 'package:application4/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillCyan50 => BoxDecoration(
        color: ColorConstant.cyan50,
      );
  static BoxDecoration get txtOutlineBlack90012 => BoxDecoration(
        color: ColorConstant.cyan50,
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack90012 => BoxDecoration(
        color: ColorConstant.cyan50,
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: ColorConstant.bluegray100,
      );
  static BoxDecoration get fillLightblue100 => BoxDecoration(
        color: ColorConstant.lightBlue100,
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration();
  static BoxDecoration get txtOutlineBlack900 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillLimeA200 => BoxDecoration(
        color: ColorConstant.limeA200,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillDeeppurple100 => BoxDecoration(
        color: ColorConstant.deepPurple100,
      );
  static BoxDecoration get txtFillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24.50,
    ),
  );

  static BorderRadius roundedBorder35 = BorderRadius.circular(
    getHorizontalSize(
      35.00,
    ),
  );
}
