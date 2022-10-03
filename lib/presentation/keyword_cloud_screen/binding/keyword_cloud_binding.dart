import '../controller/keyword_cloud_controller.dart';
import 'package:get/get.dart';

class KeywordCloudBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KeywordCloudController());
  }
}
