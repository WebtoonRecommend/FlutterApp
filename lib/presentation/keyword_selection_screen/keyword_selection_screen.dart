import 'controller/keyword_selection_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

class KeywordSelectionScreen extends GetWidget<KeywordSelectionController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("키워드 선택"),
          centerTitle: true,
        ),
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
            height: size.height,
            child: Column(
              children: [
                // 환영 인사
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("반갑습니다.\n먼저 취향에 맞는 키워드를 골라주세요.",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold19
                            .copyWith()),
                  ),
                ),
                // Expanded(flex: 1,child: SizedBox()),
                // 선택 시작 버튼
                Expanded(
                    flex: 5,
                    child: GestureDetector(
                      onTap: (){
                        onTapBtnSelction();
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
                            '키워드\n선택',
                            textAlign: TextAlign.center,
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
            )
        ),
      ),
    );
  }

  onTapBtnSelction(){
    Get.toNamed(AppRoutes.keywordcloudScreen);
  }
}
