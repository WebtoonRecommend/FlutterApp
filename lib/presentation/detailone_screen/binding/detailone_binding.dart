import '../controller/detailone_controller.dart';
import 'package:get/get.dart';

class DetailoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailoneController());
  }
}
