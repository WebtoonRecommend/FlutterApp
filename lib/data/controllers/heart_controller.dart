import 'package:application4/core/app_export.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../data/models/bookmark.dart';

class HeartController extends GetxController{
  String userid;

  var hearts = <String>[].obs;
  var bookmarkList = <Bookmark>[].obs;
  static var client = http.Client();

  HeartController({
    required this.userid
  });

  void breakHeartToWebtoon(String webtoon) async{
    // bookmark delete api
    final response = await client.delete(Uri.parse("http://3.39.22.234/BookMark/${this.userid}/${webtoon}"));

    if (response.statusCode == 200)
      hearts.remove(webtoon);
    else{
      print(response.statusCode);
      print(response.body);
    }
  }
  void heartToWebtoon(String webtoon) async{
    // bookmark post api
    var data = {
      "UID": this.userid,
      "Title": webtoon
    };
    var body = json.encode(data);

    final response = await client.post(
        Uri.parse("http://3.39.22.234/BookMark"),
        headers: {"Content-Type": "application/json"},
        body: body
    );
    if (response.statusCode == 200)
      hearts.add(webtoon);
    else{
      print(response.statusCode);
      print(response.body);
    }
  }

  Future<void> fetchData() async{
    final response = await client.get(Uri.parse("http://3.39.22.234/BookMark/${this.userid}"));

    if(response.statusCode == 200){
      var jsonData = response.body;
      var bookmarks = bookmarkFromJson(jsonData);
      if (bookmarks != null){
        bookmarkList.value = bookmarks;
      }

      for (var value in bookmarkList) {
        hearts.add(value.webtoonTitle);
      }
      hearts.toSet().toList();
      print(hearts);

    }
    else{
      return null;
    }
  }

  @override
  void onInit() async{
    super.onInit();
  // bookmark get api
    await fetchData();
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