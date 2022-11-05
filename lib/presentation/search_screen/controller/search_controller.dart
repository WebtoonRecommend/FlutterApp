import '../../../data/controllers/heart_controller.dart';
import '../../../data/repository/post_repository.dart';
import '../../main_screen/controller/main_controller.dart';
import '../../signup_screen/signup_screen.dart';
import '/core/app_export.dart';
import 'package:application4/presentation/search_screen/models/search_model.dart';
import '../../../data/models/webtoon.dart';

class SearchController extends GetxController {
  Rx<SearchModel> searchModelObj = SearchModel().obs;
  HeartController heartController = Get.find<HeartController>();
  MainController mainController = Get.find<MainController>();
  MyRepository myRepository = Get.find<MyRepository>();

  String _searchText = "";
  var searchList = <Webtoon>[].obs;

  void setSearchText(String searchtext){
    _searchText = searchtext;
  }

  updateSearchList() async {
    this.searchList.value.clear();
    await _loadSearchList();
  }

  Future<void> _loadSearchList() async{
    var searches = await myRepository.fetchSearchedWebtoonList(this._searchText);

    if (searches != null){
      searchList.value = searches;
    }
    else{
      showToast("failed to get search list");
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
