import 'package:flutter/material.dart';

import '../core/utils/math_utils.dart';
import '../theme/app_style.dart';

class ItemIndicatorWidget extends StatelessWidget{
  ItemIndicatorWidget({
    required this.itemName,
    required this.itemValue,
  });

  String itemName;
  Widget itemValue;

  @override
  Widget build(BuildContext context) {
    return _buildImageView();
  }

  Widget _buildImageView() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: getPadding(
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              flex: 3,
              child: Center(
                child: Text(
                  itemName,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterExtraLight25
                      .copyWith(),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: SizedBox(width: 50,),
            ),
            Flexible(
              flex: 5,
              child: Center(child: itemValue,),
            ),

          ],
        ),
      ),
    );

  }

}