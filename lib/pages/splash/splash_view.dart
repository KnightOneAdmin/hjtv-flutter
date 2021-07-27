import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hjtv_flutter/utils/image_utils.dart';
import 'splash_logic.dart';
import 'splash_state.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final logic = Get.find<SplashLogic>();
  final SplashState state = Get.find<SplashLogic>().state;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (_) => Scaffold(
          body: Column(
        children: <Widget>[
          Expanded(flex: 1, child: _buildSplashView()),
          Container(
            width: double.infinity,
            color: Colors.white,
            height: 180.w,
            child: Center(
              child:
                  ImageUtils('splash_bottom_logo', width: 160.w, height: 56.w),
            ),
          ),
        ],
      )),
    );
  }

  _buildSplashView() {
    return Container(
      color: Colors.greenAccent,
    );
  }

  @override
  void dispose() {
    Get.delete<SplashLogic>();
    super.dispose();
  }
}
