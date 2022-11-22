import 'package:application4/core/app_export.dart';
import 'package:application4/presentation/keyword_cloud_screen/models/keyword_cloud_model.dart';

class KeywordCloudController extends GetxController {
  Rx<KeywordCloudModel> mainNextModelObj = KeywordCloudModel().obs;

  var userid;
  var keywords = <String>[].obs;
  int maxKeywords = 10;
  Repository myRepository = Get.find<Repository>();

  @override
  void onInit() async{
    super.onInit();
    userid = myRepository.userid;
  }

  /// keyword 추가, 삭제
  onoffKeyword(String keyword){
    // 키워드가 선택되어 있는 상태에서 클릭하면 키워드를 지움
    if (keywords.contains(keyword)) {
      deleteKeyword(keyword);
      update();
      return false;
    }
    // 키워드가 선택되어 있지 않은 상태에서 클릭하면 키워드를 추가함
    else {
      if(keywords.length >= maxKeywords) return false;
      addKeyword(keyword);
      update();
      return true;
    }
  }

  addKeyword(String keyword){
    keywords.add(keyword);
  }

  deleteKeyword(String keyword){
    keywords.remove(keyword);
  }

  /// keyword 제출
  submitKeyword() async{
    // 선택한 키워드를 repository, apiclient를 통해 서버로 전달
    var data = List.generate(0, (index) => Map<String, String>());
    keywords.forEach((element) {
      data.add({
        "UID": this.userid,
        "Word": element.substring(1)
      });
    });

    // api가 성공했는지 체크
    bool isposted = await myRepository.postKeyword(data);
    if (isposted) {
      print("keyword is posted.\n");
      return true;
    }
    else{
      print("failed to post keyword.\n");
      return false;
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
