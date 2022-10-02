import 'dart:convert';

import 'package:application4/core/app_export.dart';
import 'package:application4/presentation/signup_screen/models/signup_model.dart';

import 'package:http/http.dart' as http;

class SignupController extends GetxController {
  Rx<SignupModel> signupModelObj = SignupModel().obs;
  var userid;
  var userpasswd;
  // 0:중복확인버튼아직안누름, 1:id중복, 2:통과(id중복되지않음)
  RxInt isduplication = 0.obs;


  List<String> dropdownListAge = ['10대', '20대', '30대', '40대', '50대', '60대 이상'];
  String selectedDropdownAge = '10대';

  selectAge(dynamic value) {
    selectedDropdownAge = value;
    update();
  }

  List<String> dropdownListGender = ['남', '여'];
  String selectedDropdownGender = '남';

  selectGender(dynamic value) {
    selectedDropdownGender = value;
    update();
  }

  List<String> dropdownListJob = ['학생', '직장인', '프리랜서'];
  String selectedDropdownJob = '직장인';

  selectJob(dynamic value) {
    selectedDropdownJob = value;
    update();
  }

  isDuplication() async {
    var data = {};
    var body = json.encode(data);
    var response = await http.Client().post(
        Uri.parse("http://3.39.22.234/User/${this.userid}"),
        headers: {"Content-Type": "application/json"},
        body: body
    );
    print("${response.body}");
    if (int.parse(response.body) == 2)
      this.isduplication.value = 2;
    else
      this.isduplication.value = 1;
  }

  postUserData() async {
    var data = {
    //   "ID": "123456",
    // "PassWd": "1234",
    // "Age":"1",
    // "Job":"1",
    // "Sex":"1"
    "ID": "${this.userid}",
    "PassWd": "${this.userpasswd}",
    "Age": "${dropdownListAge.indexWhere((idx) => idx == this.selectedDropdownAge)}",
    "Job": "${dropdownListJob.indexWhere((idx) => idx == this.selectedDropdownJob)}",
    "Sex": "${dropdownListGender.indexWhere((idx) => idx == this.selectedDropdownGender)}"
    };
    var body = json.encode(data);
    var response = await http.Client().post(
        Uri.parse("http://3.39.22.234/User"),
        headers: {"Content-Type": "application/json"},
        body: body
        );
    if (response.statusCode == 200)
      return true;
    else {
      // print("${dropdownListAge.indexWhere((idx) => idx == this.selectedDropdownAge)}");
      print("${response.body}");
      return false;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
