import '/core/app_export.dart';
import 'package:application4/presentation/bookmark_screen/models/bookmark_model.dart';

class BookmarkController extends GetxController {
  Rx<BookmarkModel> bookmarkModelObj = BookmarkModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
