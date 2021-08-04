import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
import 'package:hjtv_flutter/widget/platform_scaffold.dart';

import 'today_recommend_logic.dart';
import 'today_recommend_state.dart';

class TodayRecommendPage extends StatefulWidget {
  @override
  _TodayRecommendPageState createState() => _TodayRecommendPageState();
}

class _TodayRecommendPageState extends State<TodayRecommendPage> {
  final logic = Get.find<TodayRecommendLogic>();
  final TodayRecommendState state = Get.find<TodayRecommendLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (_) => PlatformScaffold(
          showBack: true,
          title: Text(
            "今日推荐",
            style: ThemeUtils.title_16,
          ),
          body: Center(
            child: Text("今天推荐"),
          )),
    );
  }

  @override
  void dispose() {
    Get.delete<TodayRecommendLogic>();
    super.dispose();
  }
}
