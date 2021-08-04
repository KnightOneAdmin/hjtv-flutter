import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
import 'package:hjtv_flutter/widget/platform_scaffold.dart';

import 'search_logic.dart';
import 'search_state.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final logic = Get.find<SearchLogic>();
  final SearchState state = Get.find<SearchLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (_) => PlatformScaffold(
        showBack: true,
        title: Text(
          "搜索",
          style: ThemeUtils.title_16,
        ),
        body: Center(
            child: Text(
              '搜索',
              style: TextStyle(fontSize: 30.0),
            ))
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<SearchLogic>();
    super.dispose();
  }
}