import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'find_logic.dart';

class FindPage extends StatefulWidget {
  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  final controller = Get.put(FindLogic);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (_) => Scaffold(
        body: Center(
            child: Text(
          '我是Find页',
          style: TextStyle(fontSize: 30.0),
        )),
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<FindLogic>();
    super.dispose();
  }
}
