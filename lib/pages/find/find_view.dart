import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'find_logic.dart';
import 'find_state.dart';

class findPage extends StatefulWidget {
  @override
  _findPageState createState() => _findPageState();
}

class _findPageState extends State<findPage> {
  final logic = Get.find<findLogic>();
  final findState state = Get.find<findLogic>().state;

  @override
    Widget build(BuildContext context) {
      return Container();
    }

  @override
  void dispose() {
    Get.delete<findLogic>();
    super.dispose();
  }
}