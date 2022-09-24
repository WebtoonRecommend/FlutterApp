import '../controller/main_next_controller.dart';
import 'package:get/get.dart';

class MainNextBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainNextController());
  }
}
