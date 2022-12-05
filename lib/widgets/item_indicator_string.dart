import 'package:flutter/material.dart';

import '../core/utils/math_utils.dart';
import '../theme/app_style.dart';

class ItemIndicatorString extends StatelessWidget{
  ItemIndicatorString({
    required this.itemName,
    required this.itemValue,
  });

  String itemName;
  String itemValue;

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
              child: Center(
                child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    child:
                    itemValue.length <= 5 ?
                    (Text(
                      "${itemValue}",
                      style: TextStyle(fontSize: 20),
                    )) :
                    (FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "${itemValue}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ))

                ),
              ),
            ),

          ],
        ),
      ),
    );

  }

}