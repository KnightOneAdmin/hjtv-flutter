import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';

import 'splash_logic.dart';
import 'splash_state.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final logic = Get.find<SplashLogic>();
  final SplashState state = Get.find<SplashLogic>().state;

  @override
    Widget build(BuildContext context) {
      return GetBuilder<ThemeController>(
        builder: (_) => Scaffold(
          body: Text(
            '我是Splash页',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      );
    }

  @override
  void dispose() {
    Get.delete<SplashLogic>();
    super.dispose();
  }
}