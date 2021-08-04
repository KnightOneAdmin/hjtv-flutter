import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/common/Clours.dart';
import 'package:hjtv_flutter/routes/routes.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
import 'package:hjtv_flutter/utils/image_utils.dart';

import 'recommend_logic.dart';

class RecommendPage extends StatefulWidget {
  @override
  _RecommendPageState createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  final logic = Get.put(RecommendLogic);

  List _listImage = [
    "https://images.pexels.com/photos/325185/pexels-photo-325185.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/7031600/pexels-photo-7031600.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/825904/pexels-photo-825904.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (_) {
        return Container(
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Column(
                    children: [
                      Container(height: 110.w, color: Colours.orange),
                      Container(
                        height: 40.w,
                        color: Colors.white,
                      )
                    ],
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10.w),
                      child: Container(
                        width: ScreenUtil.defaultSize.width,
                        height: 164.w,
                        margin: EdgeInsets.only(
                            left: 12.w, top: 4.w, bottom: 12.w, right: 12.w),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.w),
                            child: Swiper(
                              itemCount: _listImage.length,
                              autoplay: true,
                              itemBuilder: (BuildContext context, int index) {
                                return ExtendedImage.network(
                                  _listImage[index],
                                  fit: BoxFit.cover,
                                );
                              },
                              pagination: SwiperPagination(builder: SwiperPagination.fraction,alignment: Alignment.bottomRight),
                            )),
                      )),
                ],
              ),
              Container(
                  child: Row(
                children: [
                  _buildFunctionItem(context, "category_video_repo", "片库"),
                  _buildFunctionItem(context, "category_hanju", "韩剧"),
                  _buildFunctionItem(context, "category_ranking", "排行版"),
                  _buildFunctionItem(context, "category_v_follow", "我的关注"),
                  _buildFunctionItem(context, "category_fam", "剧荒"),
                ],
              )),
              Padding(
                  padding: EdgeInsets.only(left: 12.w, bottom: 4.w),
                  child: GestureDetector(
                    child: Row(
                      children: [
                        Text(
                          "今日推荐",
                          style: TextStyle(color: Colours.orange),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Colours.orange,
                        )
                      ],
                    ),
                    onTap: () {
                      Routes.toNamed(Routes.TODAY_RECOMMEND);
                    },
                  )),
              _buildBodyWidget()
            ],
          ),
        );
      },
    );
  }

  _buildFunctionItem(BuildContext context, String icon, String title) {
    return Expanded(
        child: GestureDetector(
      child: Padding(
          padding: EdgeInsets.all(2.w),
          child: Column(
            children: [
              ImageUtils(icon, width: 35.w, height: 35.w),
              Text(title)
            ],
          )),
      onTap: () {
        switch (title) {
          case "片库":
            Routes.toNamed(Routes.FILM_REPO);
            break;
          case "韩剧":
            Routes.toNamed(Routes.FILM_REPO);
            break;
          case "排行版":
            Routes.toNamed(Routes.RANKING);
            break;
          case "我的关注":
            Routes.toNamed(Routes.MY_FOLLOW);
            break;
          case "剧荒":
            Routes.toNamed(Routes.DRAMA_SHORTAGE);
            break;
        }
      },
    ));
  }

  _buildBodyWidget() {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.3),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Routes.toNamed(Routes.MOVIE_DETAIS);
            },
            child: _buildItemView(context, index),
          );
        },
        itemCount: 40,
      ),
    );
  }

  _buildItemView(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.all(4.w),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(2.w),
                  child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ExtendedImage.network(
                        index % 2 == 1
                            ? "https://images.pexels.com/photos/8774500/pexels-photo-8774500.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                            : "https://images.pexels.com/photos/6128302/pexels-photo-6128302.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                        retries: 0,
                        fit: BoxFit.cover,
                      ))),
              Positioned(
                  bottom: 4.w,
                  left: 0,
                  right: 0,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(),
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 4.w),
                          child: Text("${index % 2 == 1 ? "8.0" : "9.5"}",
                              style: ThemeUtils.body_start_item_right_14)),
                    ],
                  )),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(4.w),
                        bottomRight: Radius.circular(4.w)),
                    child: Container(
                      height: 24.w,
                      decoration: BoxDecoration(color: Color(0x100000000)),
                    )),
              )
            ],
          ),
          Text("${index % 2 == 1 ? "就这么看着你" : "海滩冲浪"}")
        ],
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<RecommendLogic>();
    super.dispose();
  }
}
