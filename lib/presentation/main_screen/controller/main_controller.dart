import '../../../data/models/webtoon.dart';
import '/core/app_export.dart';
import 'package:application4/presentation/main_screen/models/main_model.dart';
import 'package:http/http.dart' as http;
import '../../../data/models/recommend.dart';
import 'dart:convert';

class MainController extends GetxController {
  Rx<MainTwoModel> mainTwoModelObj = MainTwoModel().obs;

  String userid;
  var isLoding = 1.obs;
  var webtoonList = <Webtoon>[].obs;
  var recommendList = <Recommend>[].obs;

  MainController({
    required this.userid
  });


  @override
  void onInit() async{
    super.onInit();
    await fetchRecommendListData();
    // recommend된 webtoon 데이터만 가져옴
    recommendList.forEach((element) async {
      print(element.webtoonTitle);
      var webtoon = await fetchWebtoon(element.webtoonTitle);
      if (webtoon!=null) webtoonList.add(webtoon);
    });
    // fetchWebtoonListData1();
    // fetchWebtoonListData2();
    isLoding.value = 0;
  }

  Future<void> fetchRecommendListData() async{
    var recommends = await fetchRecommend();
    if (recommends != null){
      recommendList.value = recommends;
    }
  }
  static var client = http.Client();

  Future<List<Recommend>?> fetchRecommend() async {
    final response = await client.get(Uri.parse("http://3.39.22.234/Recommended/${this.userid}"));

    if(response.statusCode == 200){
      var jasonData = response.body;
      return recommendFromJson(jasonData);

    }
    else{
      return null;
    }
  }


  Future<Webtoon?> fetchWebtoon(String webtoonTitle) async {
    final response = await client.get(Uri.parse("http://3.39.22.234/WebToon/${webtoonTitle}"));

    if(response.statusCode == 200){
      var jsonData = response.body;
      var myJson = jsonDecode(jsonData);

      var webtoonData = Webtoon(
          webtoonName: myJson["Title"],
          webtoonDescription: myJson["Summary"],
          webtoonImagelink: myJson["ThumbNail"],
          webtoonStarRating: "4",
          webtoonist: myJson["Author"]
      );
      print(myJson["Author"]);
      print(webtoonList);
      return webtoonData;
    }
    else{
      return null;
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
