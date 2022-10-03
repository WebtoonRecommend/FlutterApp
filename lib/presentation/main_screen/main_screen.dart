import 'package:application4/data/controllers/user_controller.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../data/controllers/heart_controller.dart';
import 'controller/main_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MainScreen extends GetWidget<MainController> {
  final heartController = Get.put(HeartController(userid: Get.arguments));
  final mainController = Get.put(MainController(userid: Get.arguments));
  UserController userController = Get.find<UserController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("main"),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    onTapBtSetting();
                  },
                )
              ],
            ),
            floatingActionButton: SpeedDial(
              animatedIcon: AnimatedIcons.menu_close,
              children: [
                SpeedDialChild(
                  child: Icon(Icons.person),
                  label: 'My page',
                ),
                SpeedDialChild(
                    child: Icon(Icons.star_border),
                    label: 'bookmark',
                    onTap: () {
                      onTapBtntf1();
                    }),
                // SpeedDialChild(
                //     child: Icon(Icons.account_tree),
                //     label: 'worldcup',
                //     onTap: () {
                //       onTapBtnLogin();
                //     })
              ],
            ),
            body: Container(
                width: size.width,
                child: Obx(() =>
                  // GetX widget은 한 화면에서 하나만 사용하기!!
                  Column(
                    children: [
                      // Container(
                      //   height: size.height/5,
                      //   width: size.width,
                      //   child: Text("Welcome ${userController.user.ID}!"),
                      // ),
                      SizedBox(),
                      Expanded(
                        child: ListView.builder(
                            itemCount: mainController.webtoonList.length,
                            itemBuilder: (context, index) {
                              return Offstage(
                                offstage: heartController.hearts.contains(mainController.webtoonList[index].webtoonName),
                                child: Card(
                                  margin: EdgeInsets.all(12),
                                  child: Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              flex: 5,
                                              child: Image.asset(
                                                'assets${mainController.webtoonList[index].webtoonImagelink.substring(12)}',
                                                fit: BoxFit.contain,
                                              ),
                                              // Image.network(
                                              //     webtoonController.productList[index].imageLink,
                                              //   fit: BoxFit.fill
                                              // ),
                                            ),
                                            Flexible(
                                              flex: 6,
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
                                                            '${mainController.webtoonList[index].webtoonName}',
                                                            style: TextStyle(fontSize: 24),
                                                          ),
                                                        ),
                                                        Text(
                                                            '${mainController.webtoonList[index].webtoonist}'),
                                                        RatingBarIndicator(
                                                          rating: double.parse(mainController.webtoonList[index].webtoonStarRating),
                                                          itemBuilder: (context, index) => Icon(
                                                            Icons.star,
                                                            color: Colors.amber,
                                                          ),
                                                          itemCount: 5,
                                                          itemSize: 20.0,
                                                          direction: Axis.horizontal,
                                                        ),
                                                        Text(
                                                            '${mainController.webtoonList[index].webtoonDescription.replaceAll('\n', ' ').substring(0,20)}'+"..."),
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
                                                                mainController.webtoonList[index].webtoonName)) {
                                                              heartController.breakHeartToWebtoon(
                                                                  mainController.webtoonList[index].webtoonName);
                                                            } else {
                                                              heartController.heartToWebtoon(
                                                                  mainController.webtoonList[index].webtoonName);
                                                            }
                                                          },
                                                          icon: Icon(heartController.hearts.any((webtoonTitle) => webtoonTitle == mainController.webtoonList[index].webtoonName)
                                                              ? Icons.favorite
                                                              : Icons.favorite_border),
                                                        ),
                                                        ElevatedButton(
                                                            onPressed: () {
                                                              Get.toNamed(AppRoutes.detailScreen, arguments: mainController.webtoonList[index]);
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
            )));
  }

  onTapBtntf() {
    Get.toNamed(AppRoutes.mainNextScreen);
  }

  onTapBtntf1() {
    Get.toNamed(AppRoutes.bookmarkScreen);
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.roundSelectScreen);
  }

  onTapBtSetting() {
    Get.toNamed(AppRoutes.appSettingScreen);
  }
}
