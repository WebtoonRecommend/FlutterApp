import 'package:application4/data/controllers/user_controller.dart';

import 'package:application4/data/controllers/heart_controller.dart';
import 'package:application4/widgets/webtoon_preview.dart';
import 'package:application4/presentation/bookmark_screen/controller/bookmark_controller.dart';
import 'package:application4/presentation/main_screen/controller/main_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MainScreen extends GetWidget<MainController> {
  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();
    final userModel = userController.user;
    print("${userModel.ID} ${userModel.token} ${userModel.age} ${userModel.job} ");
    final mainController = Get.put(MainController(), permanent: true);
    final heartController = Get.put(HeartController(), permanent: true);
    Get.put(BookmarkController(), permanent: true);
    final myRepository = Get.find<Repository>();

    return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text("main"),
                centerTitle: true,
                // 갱신 버튼
                leading:
                  IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {
                      // 서버로부터 추천을 다시 받는다.
                      mainController.updateRecommendWeboons();
                    },
                  ),
                actions: [
                  // 검색 버튼
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      onTapBtnSearch();
                    },
                  )
                ],
              ),
              // floating action 버튼
              floatingActionButton: SpeedDial(
                animatedIcon: AnimatedIcons.menu_close,
                children: [
                  // setting 버튼
                  SpeedDialChild(
                    child: Icon(Icons.settings),
                    label: 'Setting',
                    onTap: (){
                      onTapBtSetting();
                    }
                  ),
                  // SpeedDialChild(
                  //     child: Icon(Icons.map_outlined),
                  //     label: 'navigation',
                  //     onTap: () {
                  //       onTapBtnnavigation();
                  //     }),
                  // SpeedDialChild(
                  //   child: Icon(Icons.person),
                  //   label: 'My page',
                  // ),
                  // 즐겨찾기 버튼
                  SpeedDialChild(
                      child: Icon(Icons.star_border),
                      label: 'bookmark',
                      onTap: () {
                        onTapBtnBookmark();
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
                          // maincontroller의 recomms 추천 목록을 가져와 보여줌
                          child: ListView.builder(
                              itemCount: mainController.recomms.length,
                              itemBuilder: (context, index) {
                                if (mainController.recomms[index]==""){
                                  return SizedBox();
                                }
                                String webtoonTitle = mainController.recomms[index];

                                return WebtoonPreview(
                                  // 하트 버튼 처리 함수
                                  onPressed: (){
                                    if (heartController.hearts.contains(webtoonTitle)) {
                                      heartController.breakHeartToWebtoon(webtoonTitle);
                                    } else {
                                      heartController.heartToWebtoon(webtoonTitle);
                                    }
                                    },
                                  webtoonTitle: mainController.recomms[index],
                                  myRepository: myRepository,
                                  // 즐겨찾기된 웹툰이면 하트를 채움
                                  isbookmark: heartController.hearts.any((title) => title == webtoonTitle),
                                );
                              }),
                        ),
                        SizedBox(),
                        // 선택한 키워드를 리스트로 보여줌 (디버깅용)
                        // 배포할 때에는 안 보이도록 설정해 놓음
                        Offstage(
                          // obx 함수가 Rx variable in the root scope of the callback의 변화만 탐지하기 때문에 새로 만들어줌
                          offstage: true,
                          child: SingleChildScrollView(
                            child: Container(
                              width: size.width,
                              height: 150,
                              child: ListView.builder(
                                  itemCount: mainController.recomms.length,
                                  itemBuilder: (context, index) {
                                    return Text(
                                      "${mainController.recomms[index]}",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.blue),
                                    );
                                  }),
                            ),
                          ),
                        ),
                        Offstage(
                          // obx 함수가 Rx variable in the root scope of the callback의 변화만 탐지하기 때문에 새로 만들어줌
                          offstage: true,
                          child: SingleChildScrollView(
                            child: Container(
                              width: size.width,
                              height: 150,
                              child: ListView.builder(
                                  itemCount: heartController.hearts.length,
                                  itemBuilder: (context, index) {
                                    return Text(
                                      "${heartController.hearts[index]}",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.green),
                                    );
                                  }),
                            ),
                          ),
                        ),
                      ],
                    )
                  )
              )),
    );
  }
  onTapBtnSearch(){
    Get.toNamed(AppRoutes.searchScreen);
  }

  onTapBtnBookmark() {
    Get.toNamed(AppRoutes.bookmarkScreen);
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.roundSelectScreen);
  }

  onTapBtSetting() {
    Get.toNamed(AppRoutes.appSettingScreen);
  }

  onTapBtnnavigation(){
    Get.toNamed(AppRoutes.appNavigationScreen);
  }
}
