import '../../../data/controllers/heart_controller.dart';
import '../../main_screen/controller/main_controller.dart';
import '/core/app_export.dart';
import 'package:application4/presentation/search_screen/models/search_model.dart';
import 'package:http/http.dart' as http;
import '../../../data/models/webtoon.dart';

class SearchController extends GetxController {
  Rx<SearchModel> searchModelObj = SearchModel().obs;
  HeartController heartController = Get.find<HeartController>();
  MainController mainController = Get.find<MainController>();

  String _searchText = "";
  var searchList = <Webtoon>[].obs;
  static var client = http.Client();

  void setSearchText(String searchtext){
    _searchText = searchtext;
  }

  Future<void> fetchWebtoonList() async {
    this.searchList.clear();
    final response = await client.get(Uri.parse("http://3.39.22.234/WebToon/Search/$_searchText"));

    if(response.statusCode == 200){
      var jsonData = response.body;
      var webtoonListData = await webtoonFromJsonList(jsonData);

      webtoonListData.forEach((webtoon) {
        if (webtoon!=null) {
          // mainController.webtoonList.add(webtoon);
          this.searchList.add(webtoon);
        }
      });

      print(webtoonListData);

    }
    else{
      print("${response.statusCode}");
      print("${response.body}");
      print("$_searchText");
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
