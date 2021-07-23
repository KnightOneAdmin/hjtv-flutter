import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      return Container();
    }

  @override
  void dispose() {
    Get.delete<FindLogic>();
    super.dispose();
  }
}