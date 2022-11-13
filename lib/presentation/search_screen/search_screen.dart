import '../../data/controllers/user_controller.dart';
import '../../widgets/webtoon_preview.dart';
import '../../data/controllers/heart_controller.dart';
import '../main_screen/controller/main_controller.dart';
import 'controller/search_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

// 출처: A Goodman - Article : https://www.kindacode.com/article/flutter-add-a-search-field-to-the-app-bar/
class SearchScreen extends GetWidget<SearchController> {
  final fieldText = TextEditingController();
  String searchText = "";

  final userController = Get.find<UserController>();
  HeartController heartController = Get.find<HeartController>();
  MainController mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    final userModel = userController.user;
    print(userModel.token);
    final searchController = Get.put(SearchController());
    Repository myRepository = Get.find<Repository>();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // centerTitle: true,
            title: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Center(
                // 검색창 textfield
                child: TextField(
                  onChanged: (value){
                    searchText = value;
                  },
                  onEditingComplete: () {
                    searchController.setSearchText(searchText);
                    searchController.updateSearchList();
                  },
                  controller: fieldText,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          /* Clear the search field */
                          fieldText.clear();
                        },
                      ),
                      hintText: 'Search...',
                      border: InputBorder.none),
                ),
              ),
            )),
        body: Container(
          child: Obx(()=>Column(
            children: [
              // Container(
              //   height: size.height/5,
              //   width: size.width,
              //   child: Text("Welcome ${userController.user.ID}!"),
              // ),
              SizedBox(),
              Expanded(
                // searchcontroller의 searchs 검색 목록을 가져와 보여줌
                child: ListView.builder(
                    itemCount: searchController.searches.length,
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    itemBuilder: (context, index) {
                      String webtoonTitle = searchController.searches[index];
                      // 웹툰 preview 위젯
                      return WebtoonPreview(
                        // 하트 버튼 처리 함수
                        onPressed: (){
                          print("${size.width},${heartController.hearts}");
                          if (heartController.hearts.contains(webtoonTitle)) {
                            heartController.breakHeartToWebtoon(webtoonTitle);
                          } else {
                            heartController.heartToWebtoon(webtoonTitle);
                          }},
                        webtoonTitle: webtoonTitle,
                        myRepository: myRepository,
                        // 즐겨찾기된 웹툰이면 하트를 채움
                        isbookmark: heartController.hearts.any((title) => title == webtoonTitle),
                      );
                    }),
              ),
              SizedBox(),
              // 선택한 키워드를 리스트로 보여줌 (디버깅용)
              Offstage(
                // obx 함수가 Rx variable in the root scope of the callback의 변화만 탐지하기 때문에 새로 만들어줌
                offstage: true,
                child: SingleChildScrollView(
                  child: Container(
                    width: size.width,
                    height: 300,
                    child: ListView.builder(
                        itemCount: heartController.hearts.length,
                        itemBuilder: (context, index) {
                          return Text(
                            "${heartController.hearts[index]}",
                            style: TextStyle(
                                fontSize: 25, color: Colors.blue),
                          );
                        }),
                  ),
                ),
              ),
            ],
          )
          )
        ),

      ),
    );
  }
}
