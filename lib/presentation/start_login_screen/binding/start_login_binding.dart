import '../controller/start_login_controller.dart';
import 'package:get/get.dart';

class StartLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StartLoginController());
  }
}
