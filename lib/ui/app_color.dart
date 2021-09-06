import 'package:flutter/material.dart';

class AppColor {

  static final Color black = Color(0xff020202);
  static final Color slowBlack = Color(0xff19191a);
  static final Color button = Color(0xffe5e1df);
  static final Color lightBrown  = Color(0xffb6b0b2);
  static final Color white  = Color(0xffffffff);
  static final Color grey  = Colors.grey;
  static final Color orange  = Colors.orange;

  static final LinearGradient gradient1 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
    Color(0xfffbf2cb),
    Color(0xffeacfc7),
  ]);

  static final LinearGradient gradient2 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
    Color(0xffbed7c7),
    Color(0xffdfd1c1),
  ]);

  static final LinearGradient gradient3 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
    Color(0xffb1bcdd),
    Color(0xffdfd0c0),
  ]);
}
