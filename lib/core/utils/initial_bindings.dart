import 'package:application4/core/app_export.dart';

/// 앱을 시작시 생성되는 인스턴스 목록
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
