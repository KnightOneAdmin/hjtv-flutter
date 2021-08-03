import 'package:flutter/cupertino.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';

class MyCustomFooter {

  static ClassicalFooter footer (Key key,{bool enableInfiniteLoad = false}){

   return ClassicalFooter(
      key: key,
      enableHapticFeedback: false,
      enableInfiniteLoad: enableInfiniteLoad,
      loadText: '上拉加载',
      loadReadyText:'松开加载',
      loadedText: '加载完成',
      noMoreText: '没有更多了',
      loadingText: '正在加载中',
      infoText: '更新于 %T',
      loadFailedText: '加载失败',
      textColor: ThemeUtils.refreshColor,
     completeDuration: Duration(milliseconds: 1)
    );
  }
}