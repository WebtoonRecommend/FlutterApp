import '../controller/detailthree_controller.dart';
import 'package:get/get.dart';

class DetailthreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailthreeController());
  }
}
