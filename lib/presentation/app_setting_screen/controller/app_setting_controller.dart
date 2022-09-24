import '/core/app_export.dart';
import 'package:application4/presentation/app_setting_screen/models/app_setting_model.dart';

class AppSettingController extends GetxController {
  Rx<AppSettingModel> appSettingModelObj = AppSettingModel().obs;
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = true;
  select1(bool value){
    valNotify1 = value;
    update();
  }
  select2(bool value){
    valNotify1 = value;
    update();
  }
  select3(bool value){
    valNotify1 = value;
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
