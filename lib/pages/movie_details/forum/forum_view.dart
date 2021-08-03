import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'forum_logic.dart';

class ForumPage extends StatefulWidget {
  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  final logic = Get.put(ForumLogic);

  @override
    Widget build(BuildContext context) {
      return Center(child: Text("讨论区"),);
    }

  @override
  void dispose() {
    Get.delete<ForumLogic>();
    super.dispose();
  }
}