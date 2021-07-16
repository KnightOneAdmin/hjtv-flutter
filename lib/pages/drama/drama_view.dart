import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'drama_logic.dart';
import 'drama_state.dart';

class dramaPage extends StatefulWidget {
  @override
  _dramaPageState createState() => _dramaPageState();
}

class _dramaPageState extends State<dramaPage> {
  final logic = Get.find<dramaLogic>();
  final dramaState state = Get.find<dramaLogic>().state;

  @override
    Widget build(BuildContext context) {
      return Container();
    }

  @override
  void dispose() {
    Get.delete<dramaLogic>();
    super.dispose();
  }
}