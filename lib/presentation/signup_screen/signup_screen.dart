import 'package:application4/presentation/signup_screen/controller/signup_controller.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../theme/palette.dart';
import 'package:application4/core/app_export.dart';
import 'package:application4/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class SignupScreen extends GetWidget<SignupController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final _formKey = GlobalKey<FormState>();
    String userPassword = '';
    String userName = '';
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("lbl8".tr),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          margin: getMargin(
              left: 30, top: 75, right: 30, bottom: 20),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                height: size.height,
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(child: Container(child: Text('Age'),alignment: Alignment.center,),flex: 2,),
                          Flexible(
                            flex: 8,
                            child: DropdownButtonFormField2(
                              decoration: InputDecoration(
                                //Add isDense true and zero Padding.
                                //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                //Add more decoration as you want here
                                //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                              ),
                              isExpanded: true,
                              hint: const Text(
                                'Select Your Age',
                                style: TextStyle(fontSize: 14),
                              ),
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black45,
                              ),
                              iconSize: 30,
                              buttonHeight: 60,
                              buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                              dropdownDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              items: controller.dropdownListAge
                                  .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                                  .toList(),
                              validator: (value) {
                                if (value == null) {
                                  return 'Please select age.';
                                }
                              },
                              onChanged: (dynamic value) {
                                //Do something when changing the item if you want.
                                controller.selectedDropdownAge = value;
                              },
                              onSaved: (value) {
                                // selectedValue = value.toString();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(child: Container(child: Text('Gender'),alignment: Alignment.center,),flex: 2,),
                          Flexible(
                            flex: 8,
                            child: DropdownButtonFormField2(
                              decoration: InputDecoration(
                                //Add isDense true and zero Padding.
                                //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                //Add more decoration as you want here
                                //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                              ),
                              isExpanded: true,
                              hint: const Text(
                                'Select Your Gender',
                                style: TextStyle(fontSize: 14),
                              ),
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black45,
                              ),
                              iconSize: 30,
                              buttonHeight: 60,
                              buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                              dropdownDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              items: controller.dropdownListGender
                                  .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                                  .toList(),
                              validator: (value) {
                                if (value == null) {
                                  return 'Please select gender.';
                                }
                              },
                              onChanged: (dynamic value) {
                                //Do something when changing the item if you want.
                                controller.selectedDropdownGender = value;
                              },
                              onSaved: (value) {
                                // selectedValue = value.toString();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(child: Container(child: Text('Job'),alignment: Alignment.center,),flex: 2,),
                          Flexible(
                            flex: 8,
                            child: DropdownButtonFormField2(
                              decoration: InputDecoration(
                                //Add isDense true and zero Padding.
                                //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                //Add more decoration as you want here
                                //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                              ),
                              isExpanded: true,
                              hint: const Text(
                                'Select Your Job',
                                style: TextStyle(fontSize: 14),
                              ),
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black45,
                              ),
                              iconSize: 30,
                              buttonHeight: 60,
                              buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                              dropdownDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              items: controller.dropdownListJob
                                  .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                                  .toList(),
                              validator: (value) {
                                if (value == null) {
                                  return 'Please select Job.';
                                }
                              },
                              onChanged: (value) {
                                //Do something when changing the item if you want.
                              },
                              onSaved: (dynamic value) {
                                controller.selectedDropdownJob = value;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextButton.icon(
                      onPressed: () {
                        showToast('service not yet supported');
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          minimumSize: Size(155, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Colors.blueGrey),
                      icon: Icon(Icons.alternate_email),
                      label: Text('이메일 인증하기'),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Flexible(
                                flex: 8,
                                child: TextFormField(
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
                              ),
                              Flexible(flex:2,child: OutlinedButton( onPressed: () { }, child: Text("중복확인"), ))
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            obscureText: true,
                            key: ValueKey(4),
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
                                hintText: 'confirm password',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: Palette.textColor1),
                                contentPadding:
                                EdgeInsets.all(10)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 18,
                        top: 40,
                        right: 24,
                        bottom: 20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              // if (_formKey.currentState!.validate()) {
                              //   _formKey.currentState!.save();
                              //   /*
                              //   서버로 개인정보 보내는 부분
                              //   */
                              //   onTapBtnLogin();
                              // }
                              onTapBtnLogin();
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                minimumSize: Size(155, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                backgroundColor: Palette.facebookColor),
                            icon: Icon(Icons.account_circle_outlined),
                            label: Text('가입하기'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.selectionScreen);
  }
}
void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.blueGrey,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}