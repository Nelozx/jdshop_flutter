
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenAdapter {

  static of(context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: const Size(750, 1334),
        orientation: Orientation.portrait);
  }

  static height(double value) {
    return ScreenUtil().setHeight(value);
  }
  
  static width(double value) {
    return ScreenUtil().setWidth(value);
  }

  // 屏幕高度
  static scrrenHeight() => ScreenUtil().screenHeight;

  // 屏幕的宽度
  static screenWidth() => ScreenUtil().screenWidth;

}