import 'package:flutter/material.dart';
import 'package:hjtv_flutter/routes/routes.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'package:rxdart/rxdart.dart';

class SplashState {
  SplashState() {
    ///Initialize variables
    final Brightness brightness =
        WidgetsBinding.instance!.window.platformBrightness;
    if (brightness != null) {
      ThemeController.to.didBrightnss = brightness;
    }
    Stream.value(1).delay(Duration(milliseconds: 1300)).listen((_) {
      Routes.offAllNamed(Routes.BOTTOM_NAVIGATION);
    });
  }
}
