import 'package:dropdown_button2/dropdown_button2.dart';

import 'controller/round_select_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

class RoundSelectScreen extends GetWidget<RoundSelectController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RoundSelectController());

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: AppBar(
              title: Text("월드컵"),
              centerTitle: true,
              automaticallyImplyLeading: false,
            ),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Center(
                            child: Text("msg_8_32".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold19.copyWith()),
                          )),
                      Expanded(
                          flex: 1,
                          child:Container(
                            padding: EdgeInsets.only(left: 50, right: 50),
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
                                'Select Round of Worldcup',
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
                              items: controller.dropdownListRound
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
                                controller.selectedDropdownRound = value;
                              },
                              onSaved: (value) {
                                // selectedValue = value.toString();
                              },
                            ),
                          ),
                      ),
                      Expanded(
                          flex: 2,
                          child:TextButton.icon(
                            onPressed: () {
                              onTapBtnStart();
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                minimumSize: Size(155, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                backgroundColor: Colors.lightBlueAccent),
                            icon: Icon(Icons.arrow_forward_ios_sharp, color: Colors.black,),
                            label: Text('시작',style: AppStyle.txtInterBold24.copyWith(),),
                          ),
                      ),
                      Expanded(flex: 4,child: SizedBox())
                    ]))));
  }

  onTapBtnStart() {
    Get.toNamed(AppRoutes.worldcupScreen);
  }
}
