import '/core/app_export.dart';
import 'package:application4/presentation/main_card_screen/models/main_card_model.dart';

class MainCardController extends GetxController {
  Rx<MainCardModel> mainCardModelObj = MainCardModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
