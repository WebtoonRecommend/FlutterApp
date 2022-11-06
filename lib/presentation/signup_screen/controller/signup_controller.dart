import 'package:application4/core/app_export.dart';
import 'package:application4/presentation/signup_screen/models/signup_model.dart';

import '../../../data/controllers/user_controller.dart';
import '../../../data/repository/post_repository.dart';

class SignupController extends GetxController {
  Rx<SignupModel> signupModelObj = SignupModel().obs;
  var userid;
  var userpasswd;

  // 0:중복확인버튼아직안누름, 1:id중복, 2:통과(id중복되지않음)
  RxInt isduplication = 0.obs;

  MyRepository myRepository = Get.find<MyRepository>();
  var userController = Get.find<UserController>();


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
    bool isidexist = await userController.isIdExist("0");
    if (!isidexist)
      this.isduplication.value = 2;
    else
      this.isduplication.value = 1;
  }

  ///userid 등록 함수
  setID(var userid) {
    this.userid = userid;
    this.userController.setID(userid);
  }

  postUserData() async {
    var data = {
    "ID": "${this.userid}",
    "PassWd": "${this.userpasswd}",
    "Age": "${dropdownListAge.indexWhere((idx) => idx == this.selectedDropdownAge)}",
    "Job": "${dropdownListJob.indexWhere((idx) => idx == this.selectedDropdownJob)}",
    "Sex": "${dropdownListGender.indexWhere((idx) => idx == this.selectedDropdownGender)}"
    };
    var isposted = await myRepository.postUserData(data);

    var isupdated = await userController.updateUser(userid, userpasswd);
    if (isposted && isupdated==0) return true;
    else return false;
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
