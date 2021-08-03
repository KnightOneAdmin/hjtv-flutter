import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'korean_drama_logic.dart';

class KoreanDramaPage extends StatefulWidget {
  @override
  _KoreanDramaPageState createState() => _KoreanDramaPageState();
}

class _KoreanDramaPageState extends State<KoreanDramaPage> {
  final logic = Get.put(KoreanDramaLogic);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("韩剧", style: TextStyle(fontSize: 30.0)),
    );
  }

  @override
  void dispose() {
    Get.delete<KoreanDramaLogic>();
    super.dispose();
  }
}
