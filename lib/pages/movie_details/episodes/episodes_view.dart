import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';

import 'episodes_logic.dart';

class EpisodesPage extends StatefulWidget {
  @override
  _EpisodesPageState createState() => _EpisodesPageState();
}

class _EpisodesPageState extends State<EpisodesPage> {
  final logic = Get.put(EpisodesLogic);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (_) {
        return Container(
          child: GridView.builder(
              itemCount: 30,
              //SliverGridDelegateWithFixedCrossAxisCount 构建一个横轴固定数量Widget
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //横轴元素个数
                  crossAxisCount: 4,
                  //纵轴间距
                  // mainAxisSpacing: 10.0,
                  // //横轴间距
                  // crossAxisSpacing: 10.0,
                  //子组件宽高长度比例
                  childAspectRatio: 1.6.w),
              itemBuilder: (BuildContext context, int index) {
                //Widget Function(BuildContext context, int index)
                return _buildItemView(context, index++);
              }),
        );
      },
    );
  }

  _buildItemView(BuildContext context, int index) {
    return GestureDetector(
      child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Container(
              alignment: Alignment.center,
              child: Text("${index==0?1:index+1}"),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.w),
                  border: Border.all(color: Colors.pinkAccent, width: 1.w)))),
      onTap: () {
        EasyLoading.showToast("${"你点击了第 :${index==0?1:index+1}"}");
      },
    );
  }

  @override
  void dispose() {
    Get.delete<EpisodesLogic>();
    super.dispose();
  }
}
