import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';

import 'find_logic.dart';
import 'find_state.dart';

class FindPage extends StatefulWidget {
  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  final logic = Get.find<FindLogic>();
  final FindState state = Get.find<FindLogic>().state;

  @override
    Widget build(BuildContext context) {
      return GetBuilder<ThemeController>(
        builder: (_) => Scaffold(
          body: Text(
            '我是Find页',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      );
    }

  @override
  void dispose() {
    Get.delete<FindLogic>();
    super.dispose();
  }
}