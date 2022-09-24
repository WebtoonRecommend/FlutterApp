import '/core/app_export.dart';
import 'package:application4/presentation/worldcup_screen/models/worldcup_model.dart';

class WorldcupController extends GetxController {
  Rx<WorldcupModel> worldcupModelObj = WorldcupModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
