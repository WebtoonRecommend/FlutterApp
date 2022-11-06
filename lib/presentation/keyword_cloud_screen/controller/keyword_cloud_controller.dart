import '../../../data/repository/post_repository.dart';
import '/core/app_export.dart';
import 'package:application4/presentation/keyword_cloud_screen/models/keyword_cloud_model.dart';

class KeywordCloudController extends GetxController {
  Rx<KeywordCloudModel> mainNextModelObj = KeywordCloudModel().obs;

  var userid;
  var keywords = <String>[].obs;
  int maxKeywords = 10;
  MyRepository myRepository = Get.find<MyRepository>();

  @override
  void onInit() async{
    super.onInit();
    userid = myRepository.userid;
  }

  onoffKeyword(String keyword){
    if (keywords.contains(keyword)) {
      deleteKeyword(keyword);
      update();
      return false;
    }
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
    var data = List.generate(0, (index) => Map<String, String>());
    keywords.forEach((element) {
      data.add({
        "UID": this.userid,
        "Word": element.substring(1)
      });
    });

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
