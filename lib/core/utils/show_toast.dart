import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


/// 화면 하단에 toast text를 띄우는 함수
void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.blueGrey,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
