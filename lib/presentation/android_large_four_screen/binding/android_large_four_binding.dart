import '../controller/android_large_four_controller.dart';
import 'package:get/get.dart';

class AndroidLargeFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeFourController());
  }
}
