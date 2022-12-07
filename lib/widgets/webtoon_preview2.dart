import 'package:application4/core/app_export.dart';
import 'package:flutter/material.dart';

import '../data/models/webtoon.dart';

// StatelessWidget으로 해야 obx가 제대로 먹힘
/// webtoon preview widget
class WebtoonPreview2 extends StatelessWidget{
  WebtoonPreview2({
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

    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.detailScreen, arguments: webtoon);
      },
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 3,
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
                    child: Text(
                      '${webtoon.webtoonName}',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                      child: IconButton(
                        onPressed: onPressed,
                        icon: Icon( isbookmark
                            ? Icons.favorite
                            : Icons.favorite_border),
                      ),
                  )
  
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}