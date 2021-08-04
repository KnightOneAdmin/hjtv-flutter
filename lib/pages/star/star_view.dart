import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/pages/star/modles/star_modle.dart';
import 'package:hjtv_flutter/routes/routes.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
import 'package:hjtv_flutter/utils/image_utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'star_logic.dart';

class StarPage extends StatefulWidget {
  @override
  _StarPageState createState() => _StarPageState();
}

class _StarPageState extends State<StarPage> {
  final logic = Get.put(StarLogic());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (_) {
        return Container(
          child: Column(
            children: <Widget>[
              ImageUtils('list_head_bg', fit: BoxFit.cover),
              Obx(() {
                return Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, childAspectRatio: 300 / 476),
                    itemBuilder: (context, index) {
                      final item = logic.list[index];
                      return InkWell(
                        onTap: () {
                          Routes.toNamed(Routes.MOVIE_DETAIS);
                        },
                        child: buildItemView(context, item),
                      );
                    },
                    itemCount: logic.list.length,
                  ),
                );
              })
            ],
          ),
        );
      },
    );
  }

  Widget buildItemView(BuildContext context, SeriesList item) {
    return Container(
      margin: EdgeInsets.all(4.w),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(4.w),
                  child: AspectRatio(
                      aspectRatio: 300 / 429,
                      child: ExtendedImage.network(
                        item.thumb!,
                        retries: 0,
                        fit: BoxFit.cover,
                      ))),
              Positioned(
                  bottom: 4.w,
                  left: 0,
                  right: 0,
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 4.w),
                          child: Text(
                            "${item.memo != null ? item.memo : 0}",
                            style: ThemeUtils.body_start_item_left_14,
                          )),
                      Expanded(
                        flex: 1,
                        child: SizedBox(),
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 4.w),
                          child: Text("${item.rank! / 10}",
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
                      decoration: BoxDecoration(color: Color(0x15000000)),
                    )),
              )
            ],
          ),
          Text("${item.name}",maxLines: 1,overflow: TextOverflow.ellipsis,)
        ],
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<StarLogic>();
    super.dispose();
  }
}
