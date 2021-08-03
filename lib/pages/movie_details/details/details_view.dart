import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'details_logic.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final logic = Get.put(DetailsLogic);

  @override
    Widget build(BuildContext context) {
      return Center(child: Text("我是详情"));
    }

  @override
  void dispose() {
    Get.delete<DetailsLogic>();
    super.dispose();
  }
}