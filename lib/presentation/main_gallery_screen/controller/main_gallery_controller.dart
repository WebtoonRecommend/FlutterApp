import '/core/app_export.dart';
import 'package:application4/presentation/main_gallery_screen/models/main_gallery_model.dart';

class MainGalleryController extends GetxController {
  Rx<MainGalleryModel> mainGalleryModelObj = MainGalleryModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
