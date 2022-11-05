import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../data/controllers/heart_controller.dart';
import '../../data/controllers/user_controller.dart';
import '../main_screen/controller/main_controller.dart';
import 'controller/search_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

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
                child: ListView.builder(
                    itemCount: searchController.searchList.length,
                    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.all(12),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    flex: 5,
                                    fit: FlexFit.tight,
                                    // child: Image.asset(
                                    //   'assets${mainController.webtoonList[index].webtoonImagelink.substring(12)}',
                                    //   fit: BoxFit.contain,
                                    // ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          5.00,
                                        ),
                                      ),
                                      child: Image.network(
                                        searchController.searchList[index].webtoonImagelink,
                                        fit: BoxFit.fill
                                      ),
                                    ),
                                  ),
                                  Expanded(flex: 1, child: SizedBox(),),
                                  Flexible(
                                    flex: 6,
                                    fit: FlexFit.tight,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Column(
                                            children: [
                                              FittedBox(
                                                fit: BoxFit.fitWidth,
                                                child: Text(
                                                  '${searchController.searchList[index].webtoonName}',
                                                  style: TextStyle(fontSize: 24),
                                                ),
                                              ),
                                              Text(
                                                  '${searchController.searchList[index].webtoonist}'),
                                              RatingBarIndicator(
                                                rating: double.parse(searchController.searchList[index].webtoonStarRating)/2,
                                                itemBuilder: (context, index) => Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                itemCount: 5,
                                                itemSize: 20.0,
                                                direction: Axis.horizontal,
                                              ),
                                              Text(
                                                  searchController.searchList[index].webtoonDescription.length>20 ?
                                                  "${searchController.searchList[index].webtoonDescription.replaceAll('\n', ' ').substring(0,20)}"+"..." :
                                                  "${searchController.searchList[index].webtoonDescription.replaceAll('\n', ' ')}"
                                              ),
                                              // Text(
                                              //     '${heartController.hearts}'),
                                            ],
                                          ),

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              IconButton(
                                                onPressed: () {
                                                  print("${size.width},${size.height}");
                                                  var heartList = heartController.hearts;
                                                  if (heartList.contains(
                                                      searchController.searchList[index].webtoonName)) {
                                                    heartController.breakHeartToWebtoon(
                                                        searchController.searchList[index].webtoonName);
                                                  } else {
                                                    heartController.heartToWebtoon(
                                                        searchController.searchList[index].webtoonName);
                                                  }
                                                },
                                                icon: Icon(heartController.hearts.any((webtoonTitle) => webtoonTitle == searchController.searchList[index].webtoonName)
                                                    ? Icons.favorite
                                                    : Icons.favorite_border),
                                              ),
                                              ElevatedButton(
                                                  onPressed: () {
                                                    Get.toNamed(AppRoutes.detailScreen, arguments: searchController.searchList[index]);
                                                  }, child: Text("상세보기"))
                                            ],
                                          )
                                        ],

                                      ),
                                    ),
                                  ),

                                ],
                              ),

                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(),
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
