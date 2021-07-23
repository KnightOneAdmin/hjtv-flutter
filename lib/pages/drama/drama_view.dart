import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'drama_logic.dart';
import 'drama_state.dart';

class DramaPage extends StatefulWidget {
  @override
  _DramaPageState createState() => _DramaPageState();
}

class _DramaPageState extends State<DramaPage> {
  final logic = Get.find<DramaLogic>();
  final DramaState state = Get.find<DramaLogic>().state;

  @override
    Widget build(BuildContext context) {
      return Container();
    }

  @override
  void dispose() {
    Get.delete<DramaLogic>();
    super.dispose();
  }
}