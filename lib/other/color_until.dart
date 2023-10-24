import 'dart:math';

import 'package:flutter/material.dart';

// 说明: 颜色规范

class ColorUnit {

  // 缺省相关
  static const Color errorColor = Colors.red;
  static const Color warningColor = Colors.orangeAccent;
  static const Color emptyColor = Colors.white24;

  //图标相关
  static const Color mainIconItemColor = Color(0xff999999);

  //底部边框颜色
  static const Color bottomBorderColor = Color(0xffE8E8E8);

  ///我的页面返回图标颜色

  static const Color lineColor = Color(0xff979797);

  //背景色
  static const Color backColor = Color(0xffFAFCFF);
  static const Color backColor2 = Color(0xffF8F8F8);

  //字体颜色
  static const Color grayTextColor = Color(0xff666666);
  static const Color redTextColor = Color(0xFFD0494E);
  static const Color redTextColor2 = Color(0xFFF95151);
  static const Color blackTextColor = Color(0xff333333);
  static const Color hintTextColor = Color(0xff999999);
  static const Color hintMoreTextColor = Color(0xffcccccc);
  static const Color yellowTextColor = Color(0xffF9D565);
  static const Color greenTextColor = Color(0xff5ED9C6);
  static const Color blueTextColor = Color(0xff0FAADF);
  static const Color blueTextColor2 = Color(0xff3C9EF9);
  static const Color orangeTextColor = Color(0xFFF9A351);

  //分割线颜色
  static const Color dividerColor = Color(0xfff7f7f7);
  static const Color dividerColor2 = Color(0xffe8e8e8);
  static const Color dividerColor3 = Color(0xffeeeeee);
  static const Color dividerColor4 = Color(0xffECEBEB);
  static const Color dividerColor5 = Color(0xfffafafa);
  static const Color lightBlue2 = Color(0xffEEF5FF);
  //阴影色：建议 elevation: 4,
  static const Color shadowColor = Color(0x30C9C8C8);
  static const Color allBackGroundColor = Color(0xffF9F9F9);
  //主题色
  static const Color accentGreenColor = Color(0xff409925);
  static const Color accentBlueColor = Color(0xff3496FA);
  static const Color accentSoftBlueColor = Color(0xff64C7FD);

  static const Color blueBackColor = Color(0xffEAF4FE);
  static const Color blueBackColor2 = Color(0xffE5F1FF);
  static const Color blueBackColor3 = Color(0xFFE7F6FB);
  static const Color greenBackColor = Color(0xffEEFBF2);
  static const Color greenBackColor2 = Color(0xffF1FCF7);
  static const Color yellowBackColor = Color(0xffFDFAE7);
  static const Color redBackColor = Color(0xFFFEE6E5);
  static const Color lightBlue = Color(0xFFD7EEFF);

  static const Color selectedColor = Color(0xff3496FA);
  static const Color textHineColor = Color(0xFFABABAB);

  static const Color shadowColor2 = Color(0xFFD7D7D7);

  static Color randomColor() {
    return Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255),
        Random().nextInt(255));
  }
}
