import '../controller/main_two_controller.dart';
import 'package:get/get.dart';

class MainTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainTwoController());
  }
}
