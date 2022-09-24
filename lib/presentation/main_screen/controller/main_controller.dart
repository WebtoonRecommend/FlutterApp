import '/core/app_export.dart';
import 'package:application4/presentation/main_screen/models/main_model.dart';

class MainController extends GetxController {
  Rx<MainModel> mainModelObj = MainModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
