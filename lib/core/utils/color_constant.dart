import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color green300 = fromHex('#72ff6f');

  static Color black9007f = fromHex('#7f000000');

  static Color gray400 = fromHex('#cacaca');

  static Color lightBlue100 = fromHex('#bdf3ff');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color limeA200 = fromHex('#faff2f');

  static Color black9003f = fromHex('#3f000000');

  static Color deepPurple100 = fromHex('#d4b4ff');

  static Color limeA400 = fromHex('#d6da00');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color cyan50 = fromHex('#d6fcff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
