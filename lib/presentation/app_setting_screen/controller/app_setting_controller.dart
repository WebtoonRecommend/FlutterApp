import '/core/app_export.dart';
import 'package:application4/presentation/app_setting_screen/models/app_setting_model.dart';

class AppSettingController extends GetxController {
  Rx<AppSettingModel> appSettingModelObj = AppSettingModel().obs;
  Repository myRepository = Get.find<Repository>();


  // RxBool on1 = false.obs; // our observable
  // RxBool on2 = false.obs; // our observable
  // RxBool on3 = false.obs; // our observable
  //
  // // swap true/false & save it to observable
  // void toggle1() => on1.value = on1.value ? false : true;
  // void toggle2() => on2.value = on2.value ? false : true;
  // void toggle3() => on3.value = on3.value ? false : true;

  @override
  void onInit() async{
    super.onInit();
    // 유저가 선택한 키워드를 받아옴
    await myRepository.fetchKeyword();
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
