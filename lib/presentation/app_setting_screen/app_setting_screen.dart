import 'package:flutter/cupertino.dart';

import 'controller/app_setting_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:application4/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AppSettingScreen extends GetWidget<AppSettingController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppSettingController());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("환경설정"),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
            width: size.width,
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                SizedBox(height: 40,),
                Row(
                  children: [
                    Icon(Icons.person, color: Colors.blue,),
                    SizedBox(width: 10,),
                    Text("Account", style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),)
                  ],
                ),
                Divider(height: 20, thickness: 1,),
                SizedBox(height: 10,),
                buildAccountOption("Change Password"),
                buildAccountOption("Content Settings"),
                buildAccountOption("Social"),
                buildAccountOption("Language"),
                buildAccountOption("Privacy and Security"),
                SizedBox(height: 40,),
                Row(
                  children: [
                    Icon(Icons.volume_up_outlined, color: Colors.blue,),
                    SizedBox(width: 10,),
                    Text("Notifications", style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),)
                  ],
                ),
                Divider(height: 20, thickness: 1,),
                SizedBox(height: 10,),
                buildNotificationOption("Theme Dark", controller.valNotify1, controller.select1),
                buildNotificationOption("Account Active", controller.valNotify2, controller.select2),
                buildNotificationOption("Oppertunity", controller.valNotify3, controller.select3),
              ],
            )
        ),
      ),
    );
  }

  Padding buildNotificationOption(String title, bool value,
      Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]
          ),),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
                activeColor: Colors.blue,
                trackColor: Colors.grey,
                value: value,
                onChanged: (bool newValue) {
                  onChangeMethod(newValue);
                }
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(String title) {
    return GestureDetector(
      onTap: () {
        Get.dialog(AlertDialog(title: Text(title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Option 1"),
              Text("Option 2"),
              Text("Option 3"),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("close"))
          ],));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),),
            Icon(Icons.arrow_forward_ios, color: Colors.grey)
          ],
        ),
      ),
    );
  }
}
