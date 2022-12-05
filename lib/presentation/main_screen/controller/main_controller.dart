import 'package:application4/core/app_export.dart';
import 'package:application4/presentation/main_screen/models/main_model.dart';
import 'package:application4/data/models/recommend.dart';

class MainController extends GetxController with StateMixin {
  Rx<MainTwoModel> mainTwoModelObj = MainTwoModel().obs;

  // 실질적인 추천 웹툰 목록
  var recomms = <String>[].obs;
  // api 통신용 추천 list
  var recommendList = <Recommend>[];
  // 모든 webtoon은 repository에 저장하고 있음
  Repository myRepository = Get.find<Repository>();


  @override
  void onInit() async{
    super.onInit();
    // main화면 들어갈 때 추천 웹툰을 받아옴
    await updateRecommendWeboons();
  }

  /// 추천 웹툰을 등록하는 함수
  updateRecommendWeboons() async{
    change(null, status: RxStatus.loading());
    // 추천 refresh시 이전 추천 목록을 지운다.
    recommendList.clear();
    recomms.value = List.filled(10, "",growable: true);
    // recommend된 webtoon 데이터만 가져옴
    await _loadRecommendList();
    recommendList.asMap().forEach((index,element) async {
      // 각각의 웹툰 가져옴
      await loadWebtoon(element.webtoonTitle);
      // obx가 변화를 탐지하기 위해서는
      // 각 웹툰이 repository에 저장될때마다 recomms를 변경하는 방식이 적절함
      recomms[index] = element.webtoonTitle;
      // recomms.removeAt(index);
      // recomms.insert(index, element.webtoonTitle);
      print("recomms : $recomms");
    });
    change(null, status: RxStatus.success());
  }

  /// repository에 웹툰 정보를 추가하는 함수
  loadWebtoon(String webtoonTitle) async{
    print(webtoonTitle);
    await myRepository.fetchWebtoon(webtoonTitle);
  }

  /// 웹툰 추천목록을 가져오는 함수
  Future<void> _loadRecommendList() async{
    var recommends = await myRepository.fetchRecommend();
    if (recommends != null){
      recommendList = recommends;
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
