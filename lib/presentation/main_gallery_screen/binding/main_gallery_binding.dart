import '../controller/main_gallery_controller.dart';
import 'package:get/get.dart';

class MainGalleryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainGalleryController());
  }
}
