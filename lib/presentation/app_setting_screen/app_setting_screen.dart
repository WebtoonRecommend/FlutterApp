import 'package:application4/presentation/bookmark_screen/controller/bookmark_controller.dart';
import 'package:application4/presentation/signup_screen/controller/signup_controller.dart';

import 'package:application4/data/controllers/heart_controller.dart';
import 'package:application4/data/controllers/user_controller.dart';
import 'package:application4/presentation/main_screen/controller/main_controller.dart';
import 'package:application4/presentation/app_setting_screen/controller/app_setting_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

class AppSettingScreen extends GetWidget<AppSettingController> {
  Repository myRepository = Get.find<Repository>();
  final userController = Get.find<UserController>();
  final heartController = Get.find<HeartController>();

  @override
  Widget build(BuildContext context) {
    AppSettingController appSettingController = Get.put(AppSettingController(), permanent: true); // Instantiate Get Controller, *in* build()

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


                // 유저정보
                Padding(
                  padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'NAME',
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 2.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '${userController.user.ID}',
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  '성별',
                                  style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 2.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  (userController.user.sex==0) ?
                                  '남성' : "여성",
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 2.0,
                                      fontSize: 28.0,),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  '나이',
                                  style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 2.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '${(userController.user.age+1)*10}대',
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 2.0,
                                      fontSize: 28.0,),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  '직업',
                                  style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 2.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  (userController.user.job==0)?
                                  "학생" : (userController.user.job==1)?
                                  "직장인" : "프리랜서",
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 2.0,
                                      fontSize: 28.0,),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),

                      //
                      // SizedBox(
                      //   height: 30.0,
                      // ),
                      // Row(
                      //   children: <Widget>[
                      //     Icon(Icons.check_circle_outline),
                      //     Text(
                      //       'using dual-blade',
                      //       style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                      //     ),
                      //   ],
                      // ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'KEYWORDS',
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 2.0,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Obx(()=> ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: myRepository.keywordList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              // 즐겨찾기 웹툰 목록들
                              child: Column(
                                children: [
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.check_circle_outline),
                                      Text(
                                        '${myRepository.keywordList[index].word}',
                                        style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                ],
                              ),
                            );
                          }),
                      ),
                      // Row(
                      //   children: <Widget>[
                      //     Icon(Icons.check_circle_outline),
                      //     Text(
                      //       'face hero tatoo',
                      //       style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 10.0,
                      // ),
                      // Row(
                      //   children: <Widget>[
                      //     Icon(Icons.check_circle_outline),
                      //     Text(
                      //       'fire flames',
                      //       style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
                Divider(
                  height: 60.0,
                  color: Colors.grey[850],
                  thickness: 0.5,
                  endIndent: 30.0,
                ),
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
                ),
                // // delete log 버튼
                // Center(
                //   child: OutlinedButton(
                //     style: OutlinedButton.styleFrom(
                //         padding: const EdgeInsets.symmetric(horizontal: 40),
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(20)
                //         )
                //     ),
                //     onPressed: () {
                //       onTapBtnDeleteLog();
                //     },
                //     child: Text("Delete log", style: TextStyle(
                //         fontSize: 16,
                //         letterSpacing: 2.2,
                //         color: Colors.black
                //     ),),
                //   ),
                // ),
                // // delete db 버튼
                // Center(
                //   child: OutlinedButton(
                //     style: OutlinedButton.styleFrom(
                //         padding: const EdgeInsets.symmetric(horizontal: 40),
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(20)
                //         )
                //     ),
                //     onPressed: () {
                //       onTapBtnDeleteDB();
                //     },
                //     child: Text("Delete DB", style: TextStyle(
                //         fontSize: 16,
                //         letterSpacing: 2.2,
                //         color: Colors.red
                //     ),),
                //   ),
                // ),
                // // 디버깅용 database 목록
                // Obx(()=> Container(
                //         width: size.width,
                //         height: 550,
                //         child: ListView.builder(
                //             itemCount: myRepository.expiration.length,
                //             itemBuilder: (context, index) {
                //               // 순서대로 timestamp, pk, 아이디
                //               return Text(
                //                 "${myRepository.expiration[index].refresh_time}    ${myRepository.expiration[index].id} ${myRepository.expiration[index].name}",
                //                );
                //             }),
                //       ),
                // ),SingleChildScrollView(
                    SizedBox(height: 40,),

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

  /// 데이터베이스의 모든 row를 삭제한다.
  onTapBtnDeleteLog(){
    myRepository.deleteLocalDatabase();
  }

  /// 데이터베이스 테이블을 삭제한다.
  onTapBtnDeleteDB(){
    myRepository.deleteTableLocalDatabase();
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
