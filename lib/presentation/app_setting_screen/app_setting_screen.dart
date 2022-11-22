import 'package:application4/presentation/bookmark_screen/controller/bookmark_controller.dart';
import 'package:application4/presentation/signup_screen/controller/signup_controller.dart';

import 'package:application4/data/controllers/heart_controller.dart';
import 'package:application4/data/controllers/user_controller.dart';
import 'package:application4/presentation/main_screen/controller/main_controller.dart';
import 'package:application4/presentation/app_setting_screen/controller/app_setting_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

class AppSettingScreen extends GetWidget<AppSettingController> {
  @override
  Widget build(BuildContext context) {
    // AppSettingController controller = Get.put(AppSettingController(), permanent: true); // Instantiate Get Controller, *in* build()

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
                // Row(
                //   children: [
                //     Icon(Icons.person, color: Colors.blue,),
                //     SizedBox(width: 10,),
                //     Text("Account", style: TextStyle(
                //         fontSize: 22, fontWeight: FontWeight.bold),)
                //   ],
                // ),
                // Divider(height: 20, thickness: 1,),
                // SizedBox(height: 10,),
                // buildAccountOption("Change Password"),
                // buildAccountOption("Content Settings"),
                // buildAccountOption("Social"),
                // buildAccountOption("Language"),
                // buildAccountOption("Privacy and Security"),
                // SizedBox(height: 40,),
                // Row(
                //   children: [
                //     Icon(Icons.volume_up_outlined, color: Colors.blue,),
                //     SizedBox(width: 10,),
                //     Text("Notifications", style: TextStyle(
                //         fontSize: 22, fontWeight: FontWeight.bold),)
                //   ],
                // ),
                // Divider(height: 20, thickness: 1,),
                // SizedBox(height: 10,),
                // buildNotificationOption(controller,"Theme Dark", controller.on1, controller.toggle1),
                // buildNotificationOption(controller,"Account Active", controller.on2, controller.toggle2),
                // buildNotificationOption(controller,"Oppertunity", controller.on3, controller.toggle3),
                // Obx will rebuild Text & Switch when "on" observable changes

                // logout 버튼
                Center(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                    onPressed: () {
                      onTapBtnLogout();
                    },
                    child: Text("SIGN OUT", style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 2.2,
                      color: Colors.black
                    ),),
                  ),
                )
              ]
            )
        ),
      ),
    );
  }

  onTapBtnLogout(){
    Get.delete<UserController>(force: true);
    Get.delete<MainController>(force: true);
    Get.delete<HeartController>(force: true);
    Get.delete<BookmarkController>(force: true);
    Get.delete<SignupController>(force: true);
    Get.delete<AppSettingController>(force: true);


    Get.offAllNamed(AppRoutes.startLoginScreen);
  }
  //
  // Padding buildNotificationOption(AppSettingController controller, String title, RxBool value,
  //     Function onChangeMethod) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Text(title, style: TextStyle(
  //             fontSize: 20,
  //             fontWeight: FontWeight.w500,
  //             color: Colors.grey[600]
  //         ),),
  //         Obx(() => Switch(
  //             // onChangeMethod() 괄호 꼭 넣기
  //             onChanged: (val) => onChangeMethod(),
  //             value: value.value),
  //         )
  //       ],
  //     ),
  //   );
  // }
  //
  // GestureDetector buildAccountOption(String title) {
  //   return GestureDetector(
  //     onTap: () {
  //       Get.dialog(AlertDialog(title: Text(title),
  //         content: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text("Option 1"),
  //             Text("Option 2"),
  //             Text("Option 3"),
  //           ],
  //         ),
  //         actions: [
  //           TextButton(
  //               onPressed: () {
  //                 Get.back();
  //               },
  //               child: Text("close"))
  //         ],));
  //     },
  //     child: Padding(
  //       padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Text(title, style: TextStyle(
  //             fontSize: 20,
  //             fontWeight: FontWeight.w500,
  //             color: Colors.grey[600],
  //           ),),
  //           Icon(Icons.arrow_forward_ios, color: Colors.grey)
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
