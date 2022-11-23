import 'package:url_launcher/url_launcher.dart';

import 'package:application4/data/controllers/heart_controller.dart';
import 'package:application4/presentation/detail_screen/controller/detail_controller.dart';
import 'package:application4/core/app_export.dart';
import 'package:application4/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailScreen extends GetWidget<DetailController> {
  @override
  Widget build(BuildContext context) {
    final webtoon = Get.arguments;
    final heartController = Get.find<HeartController>();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("lbl24".tr),
          centerTitle: true,
        ),
        backgroundColor: ColorConstant.whiteA700,
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: getMargin(
                  bottom: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 14,
                          top: 12,
                          right: 14,
                          bottom: 12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 50,
                            ),
                            // 웹툰 제목
                            Expanded(
                              child: webtoon.webtoonName.length<=9 ?
                              (Text(
                                "${webtoon.webtoonName}",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(
                                    30))
                              )):
                              (FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  "${webtoon.webtoonName}",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraLight25
                                      .copyWith(),
                                ),
                              ))
                            ),
                            Container(
                              margin: getMargin(
                                left: 10,
                              ),
                              decoration:
                              AppDecoration.fillLightblue100.copyWith(
                                borderRadius:
                                BorderRadiusStyle.roundedBorder24,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                children: [
                                  // 하트 아이콘
                                  Obx(()=> IconButton(
                                      onPressed: () {
                                        var heartList = heartController.hearts;
                                        if (heartList.contains(webtoon.webtoonName)) {
                                          heartController.breakHeartToWebtoon(webtoon.webtoonName);
                                        } else {
                                          heartController.heartToWebtoon(webtoon.webtoonName);
                                        }
                                      },
                                      icon: Icon(heartController.hearts.any((webtoonTitle) => webtoonTitle == webtoon.webtoonName)
                                          ? Icons.favorite
                                          : Icons.favorite_border),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 11,
                                      top: 1,
                                      right: 11,
                                      bottom: 4,
                                    ),
                                    // 하트 수
                                    child: Text(
                                      "lbl_77".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtInknutAntiquaLight12
                                          .copyWith(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // 썸네일 이미지
                      margin: getMargin(
                        left: 13,
                        top: 4,
                        right: 13,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              35.00,
                            ),
                          ),
                          child: Image.network(
                            webtoon.webtoonThumbnail,
                            height: getVerticalSize(
                              245.00,
                            ),
                            width: getHorizontalSize(
                              333.00,
                            ),
                            fit: BoxFit.fill
                          ),
                        ),
                      ),
                    ),
                    // 작가
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 34,
                          top: 46,
                          right: 34,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Text(
                                "lbl26".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterExtraLight25
                                    .copyWith(),
                              ),
                            ),
                            // SizedBox(width: 50,),
                            Container(
                              alignment: Alignment.center,
                              width: 200,
                              child:
                                  webtoon.webtoonist.length <= 5 ?
                              (Text(
                                  "${webtoon.webtoonist}",
                                  style: TextStyle(fontSize: 20),
                              )) :
                                (FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  "${webtoon.webtoonist}",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ))

                            ),

                          ],
                        ),
                      ),
                    ),
                    // 별점
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 19,
                          top: 27,
                          right: 19,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                                bottom: 2,
                              ),
                              child: Text(
                                "lbl27".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterExtraLight25
                                    .copyWith(),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 56,
                                bottom: 7,
                              ),
                              child: RatingBarIndicator(
                                rating: double.parse(webtoon.webtoonStarRating)/2,
                                itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 5,
                                itemSize: 30.0,
                                direction: Axis.horizontal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // 줄거리
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 22,
                          top: 27,
                          right: 22,
                        ),
                        child: Text(
                          "lbl28".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterExtraLight25.copyWith(),
                        ),
                      ),
                    ),
                    // 줄거리 내용
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: getHorizontalSize(
                          291.00,
                        ),
                        margin: getMargin(
                          left: 13,
                          top: 16,
                          right: 13,
                        ),
                        child: Text(
                          "${webtoon.webtoonDescription}",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterExtraLight16.copyWith(),
                        ),
                      ),
                    ),
                    // 웹툰 사이트 버튼
                    CustomButton(
                      onTap: (){
                        String site_basUrl = 'https://comic.naver.com';
                        final Uri _url = Uri.parse('${site_basUrl}${webtoon.webtoonLink}');
                        _launchUrl(_url);
                      },
                      width: 194,
                      text: "lbl29".tr,
                      margin: getMargin(
                        left: 13,
                        top: 102,
                        right: 13,
                      ),
                      variant: ButtonVariant.FillGreen300,
                      shape: ButtonShape.Square,
                      fontStyle: ButtonFontStyle.InterExtraLight15,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(Uri _url) async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
