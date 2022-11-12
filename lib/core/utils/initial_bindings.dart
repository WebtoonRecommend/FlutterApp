import 'package:application4/core/app_export.dart';


class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient(), permanent: true);
    Get.put(Repository(), permanent: true);
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
