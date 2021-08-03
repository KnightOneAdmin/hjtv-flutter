import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_star/flutter_star.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/pages/home/home_view.dart';
import 'package:hjtv_flutter/pages/movie_details/forum/forum_view.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
import 'package:hjtv_flutter/utils/image_utils.dart';
import 'package:hjtv_flutter/widget/platform_scaffold.dart';
import 'package:hjtv_flutter/widget/tab_under_indicator.dart';

import 'details/details_view.dart';
import 'episodes/episodes_view.dart';
import 'movie_details_logic.dart';

class MovieDetailsPage extends StatefulWidget {
  @override
  _MovieDetailsPageState createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage>
    with TickerProviderStateMixin {
  final controller = Get.put(MovieDetaisLogic());
  var initIndex = 0;
  var isPageCanChanged = true;

  late TabController _tabController;
  late PageController _pageController;
  late List<TabTitle> _tabList;

  @override
  void initState() {
    initTabData();
    _tabController = TabController(length: _tabList.length, vsync: this);
    _pageController = PageController();

    super.initState();
  }

  initTabData() {
    _tabList = [
      new TabTitle("剧集", 0),
      new TabTitle("详情", 1),
      new TabTitle("讨论区", 2)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (_) => PlatformScaffold(
        showBack: true,
        title: Text(
          "就这么看着你",
          style: ThemeUtils.title_16,
        ),
        trailing: Container(
            child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              child: ImageUtils('play_like_icon', width: 20.w, height: 20.w),
              onTap: () {
                EasyLoading.showToast('喜欢');
              },
            ),
            SizedBox(
              width: 18.w,
            ),
            GestureDetector(
              child: ImageUtils('share_icon', width: 20.w, height: 20.w),
              onTap: () {
                EasyLoading.showToast('分享');
              },
            ),
          ],
        )),
        body: Column(
          children: [
            _buildTopWeiget(context),
            _buildBodyWidget(),
            _buildBodyWidget1()
          ],
        ),
      ),
    );
  }

  _buildTopWeiget(BuildContext context) {
    return Container(
      height: 180.w,
      child: Stack(
        children: [
          Container(
              width: ScreenUtil.defaultSize.width,
              child: ExtendedImage.network(
                "https://images.pexels.com/photos/325185/pexels-photo-325185.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                fit: BoxFit.cover,
              )),
          Positioned(
            top: 24.w,
            bottom: 24.w,
            left: 12.w,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(4.w),
                child: ExtendedImage.network(
                  "https://images.pexels.com/photos/6128302/pexels-photo-6128302.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                  retries: 0,
                  fit: BoxFit.cover,
                  width: 100.w,
                  height: 132.w,
                )),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: ImageUtils('detai_intro_icon')),
          ),
          Positioned(
            top: 24.w,
            bottom: 24.w,
            left: 124.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4.w),
                  child: StarScore(
                    score: 4.5,
                    star: Star(
                        fillColor: Colors.amber,
                        emptyColor: Colors.grey.withAlpha(88)),
                    tail: Text(
                      "4.5",
                      style: TextStyle(
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.w),
                  child: Text("16集全"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.w),
                  child: Text("来源：网络"),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10.w),
                    child: Row(
                      children: [
                        _buttonWidget(0, "播放", "cibn_full_play"),
                        SizedBox(
                          width: 10.w,
                        ),
                        _buttonWidget(1, "下载", "download_icon")
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buttonWidget(int index, String title, String icon) {
    return GestureDetector(
      child: Container(
        width: 90.w,
        height: 30.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageUtils(icon, width: 16.w, height: 16.w),
            SizedBox(
              width: 10.w,
            ),
            Text(
              title,
              style: ThemeUtils.title_16,
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.all(Radius.circular(4.w))),
      ),
      onTap: () {
        EasyLoading.showToast(title);
      },
    );
  }

  void _changeTab(int index) {
    setState(() {
      initIndex = index;
    });
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  _buildBodyWidget() {
    return TabBar(
      controller: _tabController,
      onTap: _changeTab,
      indicator: DerlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: Colors.pinkAccent)),
      indicatorSize: TabBarIndicatorSize.label,
      tabs: _tabList.map((item) {
        return Container(
            height: 44.w,
            child: Center(
                child: Text(
              item.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: _tabList.indexOf(item) == initIndex ? 18.sp : 14.sp,
                  color: _tabList.indexOf(item) == initIndex
                      ? Colors.pinkAccent
                      : Colors.black),
            )));
      }).toList(),
    );
  }

  _buildBodyWidget1() {
    return Expanded(
        child: TabBarView(
      controller: _tabController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[EpisodesPage(), DetailsPage(), ForumPage()],
    ));
  }

  @override
  void dispose() {
    _pageController.dispose();
    _tabController.dispose();
    super.dispose();
  }
}
