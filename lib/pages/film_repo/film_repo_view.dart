import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
import 'package:hjtv_flutter/widget/platform_scaffold.dart';

import 'film_repo_logic.dart';
import 'film_repo_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilmRepoPage extends StatefulWidget {
  @override
  _FilmRepoPageState createState() => _FilmRepoPageState();
}

class _FilmRepoPageState extends State<FilmRepoPage> {
  final logic = Get.find<FilmRepoLogic>();
  final FilmRepoState state = Get.find<FilmRepoLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (_) => PlatformScaffold(
          showBack: true,
          title: Text(
            "片库",
            style: ThemeUtils.title_16,
          ),
          body: Center(
            child: Text(
              "片库",
              style: TextStyle(fontSize: 30.sp),
            ),
          )),
    );
  }

  @override
  void dispose() {
    Get.delete<FilmRepoLogic>();
    super.dispose();
  }
}
