import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      return Container();
    }

  @override
  void dispose() {
    Get.delete<SplashLogic>();
    super.dispose();
  }
}