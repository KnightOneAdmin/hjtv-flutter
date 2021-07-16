
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
import 'package:meta/meta.dart';

class ThemeController extends GetxController with WidgetsBindingObserver{

  static ThemeController to = Get.find<ThemeController>();

  var themeChange = 1;

  bool isPaused = false;

  bool isDarkModel = false ;

  Brightness _didBrightnss = Brightness.light;
  set didBrightnss(value){
    _didBrightnss = value;
    isDarkModel = value == Brightness.dark ? true:false;
    ThemeUtils.isDarkModel =  isDarkModel;
    update();
  }
  get didBrightnss =>_didBrightnss;


  @override
  void onInit() {
    super.onInit();
  }
  @override
  void onReady() {
    WidgetsBinding.instance!.addObserver(this);
    super.onReady();
  }
  @override
  void onClose() {
    super.onClose();
    WidgetsBinding.instance!.removeObserver(this);
  }

  @override
  void didChangePlatformBrightness() {
      final Brightness brightness =
          WidgetsBinding.instance!.window.platformBrightness;

      print('主题----  $brightness did $didBrightnss  $isPaused');
      if (brightness != didBrightnss) {
        print('主题发生改变 $brightness');
        didBrightnss = brightness;
      }

  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('状态 $state');
    isPaused = state == AppLifecycleState.paused;
    super.didChangeAppLifecycleState(state);
  }
}
