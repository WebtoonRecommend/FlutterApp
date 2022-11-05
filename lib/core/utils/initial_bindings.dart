import 'package:application4/core/app_export.dart';
import 'package:application4/data/apiClient/api_client.dart';

import '../../data/repository/post_repository.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient(), permanent: true);
    Get.put(MyRepository(), permanent: true);
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
