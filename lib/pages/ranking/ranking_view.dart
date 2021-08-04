import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
import 'package:hjtv_flutter/widget/platform_scaffold.dart';

import 'ranking_logic.dart';
import 'ranking_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RankingPage extends StatefulWidget {
  @override
  _RankingPageState createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  final logic = Get.find<RankingLogic>();
  final RankingState state = Get.find<RankingLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (_) => PlatformScaffold(
          showBack: true,
          title: Text(
            "排行版",
            style: ThemeUtils.title_16,
          ),
          body: Center(
            child: Text(
              "排行版",
              style: TextStyle(fontSize: 30.sp),
            ),
          )),
    );
  }

  @override
  void dispose() {
    Get.delete<RankingLogic>();
    super.dispose();
  }
}
