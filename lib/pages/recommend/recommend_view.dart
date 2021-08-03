import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'recommend_logic.dart';

class RecommendPage extends StatefulWidget {
  @override
  _RecommendPageState createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  final logic = Get.put(RecommendLogic);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("推荐", style: TextStyle(fontSize: 30.0)),
    );
  }

  @override
  void dispose() {
    Get.delete<RecommendLogic>();
    super.dispose();
  }
}
