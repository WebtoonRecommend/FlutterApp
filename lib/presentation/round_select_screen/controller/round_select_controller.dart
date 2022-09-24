import '/core/app_export.dart';
import 'package:application4/presentation/round_select_screen/models/round_select_model.dart';

class RoundSelectController extends GetxController {
  Rx<RoundSelectModel> roundSelectModelObj = RoundSelectModel().obs;

  List<String> dropdownListRound = ['8강','16강','32강'];
  String selectedDropdownRound = '8강';
  selectAge(dynamic value){
    selectedDropdownRound = value;
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
