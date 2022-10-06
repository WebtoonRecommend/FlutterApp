import 'dart:convert';

import '/core/app_export.dart';
import 'package:http/http.dart' as http;
import 'package:application4/presentation/keyword_cloud_screen/models/keyword_cloud_model.dart';

class KeywordCloudController extends GetxController {
  Rx<KeywordCloudModel> mainNextModelObj = KeywordCloudModel().obs;

  String userid;
  var keywords = <String>[].obs;
  int maxKeywords = 10;
  static var client = http.Client();

  KeywordCloudController({
    required this.userid
  });

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

  submitKeyword() async{
    // keyword post api
    var data = List.generate(0, (index) => Map<String, String>());
    keywords.forEach((element) {
      data.add({
        "UID": this.userid,
        "Word": element.substring(1)
      });
    });
    var body = json.encode(data);

    final response = await client.post(
        Uri.parse("http://3.39.22.234/KeyWords"),
        headers: {"Content-Type": "application/json"},
        body: body
    );
    if (response.statusCode == 200)
      return true;
    else{
      print(response.statusCode);
      print(response.body);
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
