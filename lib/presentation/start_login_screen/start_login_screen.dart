import 'dart:io';

import 'package:application4/data/controllers/user_controller.dart';

import '../../theme/palette.dart';
import 'controller/start_login_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class StartLoginScreen extends GetWidget<StartLoginController> {
  bool isSignupScreen = true;
  bool showSpinner = false;
  final _formKey = GlobalKey<FormState>();
  String userName = '';
  String userEmail = '';
  String userPassword = '';
  File? userPickedImage;


  @override
  Widget build(BuildContext context) {
    final userController = Get.put(UserController(), permanent: true);
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: ModalProgressHUD(
              inAsyncCall: false,
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: Container(
                    child: Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                          child: Container(
                              margin: getMargin(
                                  left: 60, top: 75, right: 60, bottom: 20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 20, right: 20),
                                        child: Text("lbl_webtune".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold30
                                                .copyWith())),
                                    Center(
                                      child: Text(
                                        'LOGIN',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Palette.activeColor),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 20),
                                      child: Form(
                                        key: _formKey,
                                        child: Column(
                                          children: [
                                            TextFormField(
                                              key: ValueKey(1),
                                              validator: (value) {
                                                /*
                                                * ID 유효성 판단:
                                                * server user에 존재하는지 판단
                                                * */
                                                if (value!.isEmpty ||
                                                    value.length < 4) {
                                                  return 'Please enter at least 4 characters';
                                                }
                                                return null;
                                              },
                                              onSaved: (value) {
                                                userName = value!;
                                              },
                                              onChanged: (value) {
                                                userName = value;
                                              },
                                              decoration: InputDecoration(
                                                  prefixIcon: Icon(
                                                    Icons.account_circle,
                                                    color: Palette.iconColor,
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Palette.textColor1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(35.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Palette.textColor1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(35.0),
                                                    ),
                                                  ),
                                                  hintText: 'User name',
                                                  hintStyle: TextStyle(
                                                      fontSize: 14,
                                                      color: Palette.textColor1),
                                                  contentPadding:
                                                      EdgeInsets.all(10)),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            TextFormField(
                                              obscureText: true,
                                              key: ValueKey(3),
                                              validator: (value) {
                                                /*
                                                * passwd 유효성 판단:
                                                * ID와 passwd가 일치하는지 판단
                                                * */
                                                if (value!.isEmpty ||
                                                    value.length < 6) {
                                                  return 'Password must be at least 7 characters long.';
                                                }
                                                return null;
                                              },
                                              onSaved: (value) {
                                                userPassword = value!;
                                              },
                                              onChanged: (value) {
                                                userPassword = value;
                                              },
                                              decoration: InputDecoration(
                                                  prefixIcon: Icon(
                                                    Icons.lock,
                                                    color: Palette.iconColor,
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Palette.textColor1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(35.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Palette.textColor1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(35.0),
                                                    ),
                                                  ),
                                                  hintText: 'password',
                                                  hintStyle: TextStyle(
                                                      fontSize: 14,
                                                      color: Palette.textColor1),
                                                  contentPadding:
                                                      EdgeInsets.all(10)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Container(
                                        padding: EdgeInsets.all(15),
                                        height: 90,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: GestureDetector(
                                          onTap: () async {
                                            // ID, passwd 확인된다면
                                            if (_formKey.currentState!.validate()) {

                                              _formKey.currentState!.save();
                                              var loginStatus = await userController.updateUser(userName,userPassword);
                                              switch(loginStatus) {
                                                case 0: {
                                                  showToast('Welcome!\n'
                                                      'ID:${userController.userid}\n'
                                                      'ID:${userController.user.ID}\n'
                                                      'age:${userController.user.age}\n'
                                                      'job:${userController.user.job}\n'
                                                      'sex:${userController.user.sex}\n');

                                                  onTapBtnLogin();
                                                } break;

                                                case 1: {
                                                  showToast("id & pw mismatch!\n"
                                                      "please check again");
                                                } break;

                                                case 2: {
                                                  showToast("user not Found!\n"
                                                      "please sign up");
                                                } break;

                                                default: {
                                                  showToast("Failed to get user information");
                                                } break;
                                              }
                                            }

                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  colors: [
                                                    Colors.lightBlue,
                                                    Colors.blueGrey
                                                  ],
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.3),
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  offset: Offset(0, 1),
                                                ),
                                              ],
                                            ),
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    //전송버튼
                                    Padding(
                                        padding: getPadding(
                                            left: 20, top: 40, right: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ElevatedButton(
                                                  onPressed: onTapBtnSignup,
                                                  style: ElevatedButton.styleFrom(
                                                      backgroundColor:
                                                          Color(0xFF122E4F)),
                                                  child: Text(
                                                    "lbl_sign_up".tr,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  )),
                                              ElevatedButton(
                                                  onPressed: () {
                                                    showToast(
                                                        'service not yet supported');
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                      backgroundColor:
                                                          Color(0xFF122E4F)),
                                                  child: Text(
                                                    "lbl_id_pw".tr,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  )),
                                            ])),
                                  ])),
                        ))),
              ),
            )));
  }

  onTapBtnLogin() {
    // main 화면으로 이동
    Get.offAllNamed(AppRoutes.mainScreen);
  }

  onTapBtnSignup() {
    // signup 화면으로 이동
    Get.toNamed(AppRoutes.signupScreen);
  }
}

