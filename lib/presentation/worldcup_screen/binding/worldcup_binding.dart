import '../controller/worldcup_controller.dart';
import 'package:get/get.dart';

class WorldcupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorldcupController());
  }
}
