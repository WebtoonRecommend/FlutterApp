import 'controller/main_two_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:application4/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MainTwoScreen extends GetWidget<MainTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("main"),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    onTapBtSetting();
                  },
                )
              ],
            ),
            floatingActionButton: SpeedDial(
              animatedIcon: AnimatedIcons.menu_close,
              children: [
                SpeedDialChild(
                  child: Icon(Icons.person),
                  label: 'My page',
                ),
                SpeedDialChild(
                    child: Icon(Icons.star_border),
                    label: 'bookmark',
                    onTap: () {
                      onTapBtntf1();
                    }
                ),
                SpeedDialChild(
                    child: Icon(Icons.account_tree),
                    label: 'worldcup',
                    onTap: () {
                      onTapBtnLogin();
                    }
                )
              ],
            ),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [

                            ]))))));
  }

  onTapBtntf() {
    Get.toNamed(AppRoutes.mainNextScreen);
  }

  onTapBtntf1() {
    Get.toNamed(AppRoutes.bookmarkScreen);
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.selectionScreen);
  }

  onTapBtSetting() {
    Get.toNamed(AppRoutes.appSettingScreen);
  }
}
