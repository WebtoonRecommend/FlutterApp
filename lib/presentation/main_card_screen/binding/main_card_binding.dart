import '../controller/main_card_controller.dart';
import 'package:get/get.dart';

class MainCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainCardController());
  }
}
