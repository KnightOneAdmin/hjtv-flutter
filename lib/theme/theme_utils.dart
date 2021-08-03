import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hjtv_flutter/common/Clours.dart';
import 'package:hjtv_flutter/common/web_page_transitions.dart';

class ThemeUtils {
  static bool isDarkModel = false;

  static get bgColor {
    return isDarkModel == true ? Colours.dark_bg_color : Colours.bg_color;
  }

  static get textColor {
    return isDarkModel == true ? Colours.dark_text : Colours.text;
  }

  static get cardColor {
    return isDarkModel == true ? Colours.dark_card_color : Colours.card_color;
  }

  static get disableColor {
    return isDarkModel == true ? Colours.dark_card_color : Colours.gray_ea;
  }

  static get searchBarColor {
    return isDarkModel == true ? Color(0xff202020) : Colours.bg_color;
  }

  static get searchBarColor_1 {
    return isDarkModel == true ? Color(0xff202020) : Colours.white;
  }

  static get bottomNavigationBarColor {
    return isDarkModel == true ? Colours.dark_bg_color : Colours.white;
  }

  static get navigationBarColor {
    return isDarkModel == true ? Colours.dark_bg_color : Colours.orange;
  }

  static get navigationTitle {
    return TextStyle(
        color: isDarkModel == true ? Colours.dark_text : Color(0xff262626),
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        height: 1.5);
  }

  static get title_16 {
    return TextStyle(
        color: isDarkModel == true ? Colours.dark_text : Colours.white,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.4,
        height: 1.4);
  }

  static TextStyle get subTitle_14 {
    return TextStyle(
        color: isDarkModel == true ? Colours.dark_text : Colours.balck_85,
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.3,
        height: 1.42);
  }

  static TextStyle get body_16 {
    return TextStyle(
        color: isDarkModel == true ? Colours.dark_text : Colours.balck_85,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.3,
        height: 1.42);
  }

  static TextStyle get body_14 {
    return TextStyle(
        color: isDarkModel == true ? Colours.dark_text : Colours.balck_85,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.3,
        height: 1.42);
  }

  static TextStyle get body_start_item_left_14 {
    return TextStyle(
        color: isDarkModel == true ? Colours.white : Colours.white,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.3,
        height: 1.42);
  }

  static TextStyle get body_start_item_right_14 {
    return TextStyle(
        color: isDarkModel == true ? Colours.brown : Colours.brown,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.3,
        height: 1.42);
  }

  static get body_14_50 {
    return TextStyle(
        color: isDarkModel == true ? Colours.dark_text_75 : Colours.balck_50,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.3,
        height: 1.42);
  }

  static get body_14_25 {
    return TextStyle(
        color: isDarkModel == true ? Colours.dark_text_30 : Colours.balck_25,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.3,
        height: 1.42);
  }

  static get subTitle_12 {
    return TextStyle(
        color: isDarkModel == true ? Colours.dark_text : Colours.balck_85,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.25,
        height: 1.3);
  }

  static get body_12 {
    return TextStyle(
        color: isDarkModel == true ? Colours.dark_text : Colours.balck_85,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        height: 1.5);
  }

  static get body_12_50 {
    return TextStyle(
        color: isDarkModel == true ? Colours.dark_text_65 : Colours.balck_50,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        height: 1.5);
  }

  static get body_12_35 {
    return TextStyle(
        color: isDarkModel == true ? Colours.dark_text_65 : Colours.balck_35,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        height: 1.5);
  }

  static get body_11 {
    return TextStyle(
        color: isDarkModel == true ? Colours.dark_text_50 : Colours.balck_35,
        fontSize: 11.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        height: 1.5);
  }

  static get inactiveColor {
    return isDarkModel == true
        ? Color.fromRGBO(207, 207, 207, 1)
        : Color.fromRGBO(179, 179, 179, 1);
  }

  static get borderColor {
    return isDarkModel == true
        ? Color.fromRGBO(94, 94, 94, 1)
        : Color.fromRGBO(232, 236, 239, 1);
  }

  static get refreshColor {
    return isDarkModel == true
        ? Color.fromRGBO(207, 207, 207, 1)
        : Color.fromRGBO(0, 0, 0, 0.85);
  }

  static get bodyText14_bronw {
    return TextStyle(color: Colours.brown, fontSize: 14.sp, height: 1.5);
  }

  static ThemeData dark() {
    return ThemeData(
      errorColor: Colors.red,
      brightness: Brightness.dark,
      primaryColor: Colours.dark_app_main,
      accentColor: Color(0xff202020),
      cardColor: Colours.dark_card_color,
      // Tab指示器颜色
      indicatorColor: Colours.dark_app_main,
      // 页面背景色
      scaffoldBackgroundColor: Colours.dark_bg_color,
      // 主要用于Material背景色
      // 文字选择色（输入框复制粘贴菜单）
      textSelectionColor: Colours.app_main.withAlpha(70),
      textSelectionHandleColor: Colours.app_main,
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: Colours.app_main.withAlpha(70),
        selectionHandleColor: Colours.app_main,
      ),
      textTheme: TextTheme(),
      inputDecorationTheme: InputDecorationTheme(
        // TextField输入文字颜色
        hintStyle: TextStyle(color: Color(0xff5e5e5e), fontSize: 14),
      ),
      appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colours.dark_bg_color,
          brightness: Brightness.dark),
      bottomAppBarColor: Colours.dark_bg_color,
      dividerTheme: DividerThemeData(
          color: Colours.dark_bg_color, space: 0.6, thickness: 0.6),
      cupertinoOverrideTheme: CupertinoThemeData(
          brightness: Brightness.dark,
          barBackgroundColor: Colours.dark_bg_color,
          scaffoldBackgroundColor: Colours.dark_bg_color,
          textTheme: CupertinoTextThemeData(
              tabLabelTextStyle: TextStyle(fontSize: 12))),
      pageTransitionsTheme: NoTransitionsOnWeb(),
    );
  }

  static ThemeData light() {
    return ThemeData(
      errorColor: Colors.red,
      brightness: Brightness.light,
      primaryColor: Colours.app_main,
      accentColor: Color(0xfff8f8f8),
      cardColor: Colours.card_color,
      // Tab指示器颜色
      indicatorColor: Colours.app_main,
      // 页面背景色
      scaffoldBackgroundColor: Colours.bg_color,
      // 主要用于Material背景色
      canvasColor: Colours.orange,
      // 文字选择色（输入框复制粘贴菜单）
      textSelectionColor: Colours.app_main.withAlpha(70),
      textSelectionHandleColor: Colours.app_main,
      // 稳定发行版：1.23 变更(https://flutter.dev/docs/release/breaking-changes/text-selection-theme)
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: Colours.app_main.withAlpha(70),
        selectionHandleColor: Colours.app_main,
      ),
      textTheme: TextTheme(),
      inputDecorationTheme: InputDecorationTheme(
        // TextField输入文字颜色
        hintStyle: TextStyle(
            color: Colours.balck_25, fontSize: 14, fontWeight: FontWeight.w400),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        color: Colors.white,
        brightness: Brightness.light,
      ),
      bottomAppBarColor: Colours.white,
      dividerTheme:
          DividerThemeData(color: Colours.line, space: 0.6, thickness: 0.6),
      cupertinoOverrideTheme: CupertinoThemeData(
          brightness: Brightness.light,
          barBackgroundColor: Colors.white,
          scaffoldBackgroundColor: Colours.bg_color,
          textTheme: CupertinoTextThemeData(
              tabLabelTextStyle: TextStyle(fontSize: 12))),
      pageTransitionsTheme: NoTransitionsOnWeb(),
    );
  }
}
