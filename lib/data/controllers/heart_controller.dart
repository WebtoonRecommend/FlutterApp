import 'package:application4/core/app_export.dart';
import 'package:application4/presentation/main_screen/controller/main_controller.dart';
import '../../data/models/bookmark.dart';

class HeartController extends GetxController{
  // 실질적인 즐겨찾기 웹툰 목록
  var hearts = <String>[].obs;
  // api 통신용 bookmark list
  var bookmarkList = <Bookmark>[];

  Repository myRepository = Get.find<Repository>();
  MainController mainController = Get.find<MainController>();

  @override
  void onInit() async{
    super.onInit();
    // bookmark get api
    await updateBookmarkWebtoons();
  }

  /// bookmark 목록에 기재된 웹툰들을 repository, hearts에 등록하는 함수
  updateBookmarkWebtoons() async{
    // recommend된 webtoon 데이터만 가져옴
    await _loadBookmarkList();
    bookmarkList.forEach((element) async {
      // 각각의 웹툰을 가져옴
      mainController.loadWebtoon(element.webtoonTitle);
      hearts.add(element.webtoonTitle);
    });
    // 중복 제거
    hearts.toSet().toList();
    print(hearts);
  }

  /// 웹툰 bookmark목록을 가져오는 함수
  Future<void> _loadBookmarkList() async{
    var recommends = await myRepository.fetchBookmark();
    if (recommends != null){
      bookmarkList = recommends;
    }
    else{
      showToast("failed to get bookmark list");
    }
  }

  /// bookmark 제거
  void breakHeartToWebtoon(String webtoon) async{
    var isdeleted = await myRepository.deleteWebtoonFromBookmark(webtoon);
    if (isdeleted) {
      hearts.remove(webtoon);
      print("${webtoon} is deleted from BookMark.\n");
    }
    else{
      print("failed to delete ${webtoon} from bookmark.\n");
    }
  }

  /// bookmark 추가
  void heartToWebtoon(String webtoon) async{
    var isposted = await myRepository.deleteWebtoonFromBookmark(webtoon);
    if (isposted) {
      hearts.add(webtoon);
      print("${webtoon} is posted on BookMark.\n");
    }
    else {
      print("failed to post ${webtoon} on bookmark.\n");
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