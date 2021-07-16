import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/routes/routes.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';

import 'splash_logic.dart';
import 'splash_state.dart';
import 'package:rxdart/rxdart.dart';

class splashPage extends StatefulWidget {
  @override
  _splashPageState createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {
  final logic = Get.find<splashLogic>();
  final splashState state = Get.find<splashLogic>().state;

  @override
  void initState() {

    final Brightness brightness =
        WidgetsBinding.instance!.window.platformBrightness;
    if (brightness != null){
      ThemeController.to.didBrightnss = brightness;
    }

    Stream.value(1).delay(Duration(milliseconds: 1300)).listen((_) {
        Routes.offAllNamed(Routes.BOTTOM_NAVIGATION);
    });


    super.initState();
  }

  @override
    Widget build(BuildContext context) {
      return Container();
    }

  @override
  void dispose() {
    Get.delete<splashLogic>();
    super.dispose();
  }
}