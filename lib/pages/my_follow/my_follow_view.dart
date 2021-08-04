import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
import 'package:hjtv_flutter/widget/platform_scaffold.dart';

import 'my_follow_logic.dart';
import 'my_follow_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyFollowPage extends StatefulWidget {
  @override
  _MyFollowPageState createState() => _MyFollowPageState();
}

class _MyFollowPageState extends State<MyFollowPage> {
  final logic = Get.find<MyFollowLogic>();
  final MyFollowState state = Get.find<MyFollowLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (_) => PlatformScaffold(
          showBack: true,
          title: Text(
            "我的关注",
            style: ThemeUtils.title_16,
          ),
          body: Center(
            child: Text(
              "我的关注",
              style: TextStyle(fontSize: 30.sp),
            ),
          )),
    );
  }

  @override
  void dispose() {
    Get.delete<MyFollowLogic>();
    super.dispose();
  }
}
