import 'package:application4/core/app_export.dart';
import 'package:application4/presentation/main_screen/controller/main_controller.dart';
import 'package:application4/presentation/start_login_screen/start_login_screen.dart';
import '../../data/models/bookmark.dart';
import '../repository/post_repository.dart';

class HeartController extends GetxController{
  var hearts = <String>[].obs;
  var bookmarkList = <Bookmark>[].obs;

  MyRepository myRepository = Get.find<MyRepository>();
  MainController mainController = Get.find<MainController>();

  @override
  void onInit() async{
    super.onInit();
    // bookmark get api
    await updateBookmarkWebtoons();
  }

  /// bookmark 웹툰을 등록하는 함수
  updateBookmarkWebtoons() async{
    // recommend된 webtoon 데이터만 가져옴
    await _loadBookmarkList();
    bookmarkList.forEach((element) async {
      // 각각의 웹툰 가져옴
      mainController.loadWebtoon(element.webtoonTitle);
      hearts.add(element.webtoonTitle);
    });
    hearts.toSet().toList();
    print(hearts);
  }

  /// 웹툰 bookmark목록을 가져오는 함수
  Future<void> _loadBookmarkList() async{
    var recommends = await myRepository.fetchBookmark();
    if (recommends != null){
      bookmarkList.value = recommends;
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
      print("${webtoon} is posted from BookMark.\n");
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