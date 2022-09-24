import '../controller/round_select_controller.dart';
import 'package:get/get.dart';

class RoundSelectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RoundSelectController());
  }
}
