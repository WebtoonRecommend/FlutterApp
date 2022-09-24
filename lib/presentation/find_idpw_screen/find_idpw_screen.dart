import 'controller/find_idpw_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

class FindIdpwScreen extends GetWidget<FindIdpwController> {
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
            ),
          ),
        ),
      ),
    );
  }
}
