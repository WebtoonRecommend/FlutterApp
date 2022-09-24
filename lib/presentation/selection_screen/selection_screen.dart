import 'controller/selection_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

class SelectionScreen extends GetWidget<SelectionController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                height: size.height,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("msg_2_1".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterBold19
                                .copyWith()),
                      ),
                    ),
                    // Expanded(
                    //     flex: 3,
                    //     child: GestureDetector(
                    //       onTap: (){
                    //         onTapBtnRecommend();
                    //       },
                    //       child: Container(
                    //         width: size.width-50,
                    //         height: 100,
                    //         decoration: BoxDecoration(
                    //           gradient: LinearGradient(
                    //             colors: [ Color(0xFF5093A6), Color(0xffa4f0e8) ],
                    //             begin: Alignment.topLeft,
                    //             end: Alignment.bottomRight,
                    //           ),
                    //           borderRadius: BorderRadius.circular(20),
                    //           boxShadow: [
                    //             BoxShadow(
                    //               color: Colors.black12,
                    //               offset: Offset(5, 5),
                    //               blurRadius: 10,
                    //             )
                    //           ],
                    //         ),
                    //         child: Center(
                    //           child: Text(
                    //             '웹툰\n추천',
                    //             style: TextStyle(
                    //               color: Colors.white,
                    //               fontSize: 30,
                    //               fontWeight: FontWeight.w500,
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     )),
                    // Expanded(flex: 1,child: SizedBox()),
                    Expanded(flex: 1,child: SizedBox()),

                    Expanded(
                        flex: 5,
                        child: GestureDetector(
                          onTap: (){
                            onTapBtnWorldcup();
                          },
                          child: Container(
                            width: size.width-50,
                            height: 100,
                            padding: EdgeInsets.only(right: 50,left: 50),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [ Color(0xffFFAE88), Color(0xff8F93EA) ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(5, 5),
                                  blurRadius: 10,
                                )
                              ],
                            ),
                            child: Center(
                              child: Text(
                                '웹툰\n월드컵컵',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )),
                    Expanded(flex: 1,child: SizedBox())
                  ],
                ))));
  }

  onTapBtnRecommend() {
    Get.toNamed(AppRoutes.mainTwoScreen);
  }

  onTapBtnWorldcup(){
    Get.toNamed(AppRoutes.roundSelectScreen);
  }
}
