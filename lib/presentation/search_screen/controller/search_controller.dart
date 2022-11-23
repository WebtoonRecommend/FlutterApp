import 'package:application4/data/controllers/heart_controller.dart';
import 'package:application4/presentation/main_screen/controller/main_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:application4/presentation/search_screen/models/search_model.dart';
import 'package:application4/data/models/webtoon.dart';

class SearchController extends GetxController {
  Rx<SearchModel> searchModelObj = SearchModel().obs;
  HeartController heartController = Get.find<HeartController>();
  MainController mainController = Get.find<MainController>();
  Repository myRepository = Get.find<Repository>();

  String _searchText = "";
  // 실질적인 검색 웹툰
  var searches = <String>[].obs;
  // api 통신용 검색 list
  var searchList = <Webtoon>[].obs;

  /// 검색할 단어를 set
  void setSearchText(String searchtext){
    _searchText = searchtext;
  }

  /// text를 검색하여 나온 웹툰을 등록
  updateSearchList() async {
    this.searchList.value.clear();
    this.searches.value.clear();
    await _loadSearchList();
  }

  /// search text로 검색된 웹툰을 repository에 등록
  Future<void> _loadSearchList() async{
    var searches = await myRepository.fetchSearchedWebtoonList(this._searchText);

    if (searches != null){
      this.searches.value = searches;
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
