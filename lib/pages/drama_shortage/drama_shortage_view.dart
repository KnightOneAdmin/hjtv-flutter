import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
import 'package:hjtv_flutter/widget/platform_scaffold.dart';

import 'drama_shortage_logic.dart';
import 'drama_shortage_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DramaShortagePage extends StatefulWidget {
  @override
  _DramaShortagePageState createState() => _DramaShortagePageState();
}

class _DramaShortagePageState extends State<DramaShortagePage> {
  final logic = Get.find<DramaShortageLogic>();
  final DramaShortageState state = Get.find<DramaShortageLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (_) => PlatformScaffold(
          showBack: true,
          title: Text(
            "剧荒",
            style: ThemeUtils.title_16,
          ),
          body: Center(
            child: Text(
              "剧荒",
              style: TextStyle(fontSize: 30.sp),
            ),
          )),
    );
  }

  @override
  void dispose() {
    Get.delete<DramaShortageLogic>();
    super.dispose();
  }
}
