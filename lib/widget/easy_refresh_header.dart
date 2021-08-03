import 'package:flutter/cupertino.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:hjtv_flutter/common/Clours.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
class MyCustomHeader {

  static ClassicalHeader header(Key key){

    return ClassicalHeader(
      key: key,
      enableHapticFeedback: false,
      refreshText: '下拉刷新',
      refreshedText: '刷新完成',
      refreshingText: '正在刷新',
      infoText: '更新于 %T',
      refreshReadyText: '松开刷新',
      refreshFailedText: '刷新失败',
      textColor: ThemeUtils.refreshColor,
      infoColor: Colours.app_main,
      completeDuration: Duration(milliseconds: 200)
    );
  }
}