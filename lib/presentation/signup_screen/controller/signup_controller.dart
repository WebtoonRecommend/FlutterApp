import 'package:application4/presentation/signup_screen/models/signup_model.dart';

import '/core/app_export.dart';

class SignupController extends GetxController {
  Rx<SignupModel> androidLarge6ModelObj = SignupModel().obs;

  List<String> dropdownListAge = ['10대', '20대', '30대', '40대', '50대', '60대 이상'];
  String selectedDropdownAge = '10대';
  selectAge(dynamic value){
    selectedDropdownAge = value;
    update();
  }
  List<String> dropdownListGender = ['남', '여'];
  String selectedDropdownGender = '남';
  selectGender(dynamic value){
    selectedDropdownGender = value;
    update();
  }
  List<String> dropdownListJob = ['학생', '직장인', '프리랜서'];
  String selectedDropdownJob = '직장인';
  selectJob(dynamic value){
    selectedDropdownJob = value;
    update();
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
