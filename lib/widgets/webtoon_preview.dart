import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../data/models/webtoon.dart';

// StatelessWidget으로 해야 obx가 제대로 먹힘
// TODO: 다양한 형태의 preview 위젯을 만들어 보기
/// webtoon preview widget
class WebtoonPreview extends StatelessWidget{
  WebtoonPreview({
    required this.webtoonTitle,
    required this.myRepository,
    required this.onPressed,
    required this.isbookmark,
  });

  String webtoonTitle;
  Repository myRepository;
  VoidCallback onPressed;
  bool isbookmark;

  @override
  Widget build(BuildContext context) {
    return _buildImageView();
  }

  Widget _buildImageView() {
    // webtoon이 repository에 존재하지 않으면 출력하지 않는다.
    if (!myRepository.webtoonList.containsKey(webtoonTitle)){
      return SizedBox();
    }
    // webtoon title에 대응하는 Webtoon 인스턴스
    Webtoon webtoon = myRepository.webtoonList[webtoonTitle]!;

    return Card(
      margin: EdgeInsets.all(12),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 5,
                  fit: FlexFit.tight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        5.00,
                      ),
                    ),
                    // 웹툰 썸네일 이미지
                    child: Image.network(
                        webtoon.webtoonImagelink,
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
                              // 웹툰 제목
                              child: Text(
                                '${webtoon.webtoonName}',
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                            // 웹툰 작가
                            Text(
                                '${webtoon.webtoonist}'),
                            // 웹툰 별점
                            Row(
                              children: [
                                RatingBarIndicator(
                                  rating: double.parse(webtoon.webtoonStarRating)/2,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 20.0,
                                  direction: Axis.horizontal,
                                ),
                                Text("   ${webtoon.webtoonStarRating}")
                              ],
                            ),
                            // 웹툰 설명(20자 이내)
                            Text(
                                (webtoon.webtoonDescription.length<20)?
                                    '${webtoon.webtoonDescription.replaceAll('\n', ' ')}'
                                    :
                                '${webtoon.webtoonDescription.replaceAll('\n', ' ').substring(0,20)}'+"..."),
                            // Text(
                            //     '${heartController.hearts}'),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // 웹툰 북마크 아이콘(하트)
                            IconButton(
                              onPressed: onPressed,
                              icon: Icon( isbookmark
                                  ? Icons.favorite
                                  : Icons.favorite_border),
                            ),
                            // 웹툰 상세보기 버튼
                            ElevatedButton(
                                onPressed: () {
                                  Get.toNamed(AppRoutes.detailScreen, arguments: webtoon);
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
  }
}