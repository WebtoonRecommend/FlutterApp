import '../controller/find_idpw_controller.dart';
import 'package:get/get.dart';

class FindIdpwBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FindIdpwController());
  }
}
