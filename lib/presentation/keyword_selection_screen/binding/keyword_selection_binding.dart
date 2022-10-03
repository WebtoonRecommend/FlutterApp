import '../controller/keyword_selection_controller.dart';
import 'package:get/get.dart';

class KeywordSelectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(KeywordSelectionController());
  }
}
