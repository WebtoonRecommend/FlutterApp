import '../../../data/models/webtoon.dart';
import '/core/app_export.dart';
import 'package:application4/presentation/main_screen/models/main_model.dart';
import '../../../data/models/recommend.dart';

class MainController extends GetxController {
  Rx<MainTwoModel> mainTwoModelObj = MainTwoModel().obs;

  var isLoding = 1.obs;
  var webtoonList = <Webtoon>[].obs;
  var recommendList = <Recommend>[].obs;

  MyRepository myRepository = Get.find<MyRepository>();


  @override
  void onInit() async{
    super.onInit();
    await updateRecommendWeboons();
    isLoding.value = 0;
  }

  /// 추천 웹툰을 등록하는 함수
  updateRecommendWeboons() async{
    // recommend된 webtoon 데이터만 가져옴
    await _loadRecommendList();
    recommendList.value.forEach((element) async {
      // 각각의 웹툰 가져옴
      loadWebtoon(element.webtoonTitle);
    });
  }

  /// webtoonList에 웹툰 정보를 추가하는 함수
  loadWebtoon(String webtoonTitle) async{
    print(webtoonTitle);
    var webtoon = await myRepository.fetchWebtoon(webtoonTitle);
    if (webtoon!=null && !webtoonList.contains(webtoon)) webtoonList.add(webtoon);
  }

  /// 웹툰 추천목록을 가져오는 함수
  Future<void> _loadRecommendList() async{
    var recommends = await myRepository.fetchRecommend();
    if (recommends != null){
      recommendList.value = recommends;
    }
    else{
      showToast("failed to get recommend list");
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
