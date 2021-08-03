import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/pages/home/home_logic.dart';
import 'package:hjtv_flutter/pages/korean_drama/korean_drama_view.dart';
import 'package:hjtv_flutter/pages/recommend/recommend_view.dart';
import 'package:hjtv_flutter/pages/star/star_view.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
import 'package:hjtv_flutter/widget/platform_scaffold.dart';
import 'package:hjtv_flutter/widget/tab_under_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class TabTitle {
  String title;
  int id;

  TabTitle(this.title, this.id);
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final controller = Get.put(HomeLogic());

  late TabController _tabController;
  late PageController _pageController;
  late List<TabTitle> _tabList;

  var initIndex = 0;
  var isPageCanChanged = true;

  @override
  void initState() {
    initTabData();
    _tabController = TabController(length: _tabList.length, vsync: this);
    _pageController = PageController();

    super.initState();
  }

  initTabData() {
    _tabList = [
      new TabTitle("明星", 0),
      new TabTitle("推荐", 1),
      new TabTitle("韩剧", 2)
    ];
  }

  void _changeTab(int index) {
    setState(() {
      initIndex = index;
    });
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }


  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        builder: (_) => PlatformScaffold(
              title: Container(
                  child: TabBar(
                labelColor: ThemeUtils.bgColor,
                unselectedLabelColor: ThemeUtils.bgColor,
                unselectedLabelStyle:
                    TextStyle(color: ThemeUtils.bgColor, fontSize: 14.sp),
                isScrollable: true,
                controller: _tabController,
                indicatorColor: ThemeUtils.bgColor,
                onTap: _changeTab,
                indicator: DerlineTabIndicator(),
                indicatorSize: TabBarIndicatorSize.label,
                tabs: _tabList.map((item) {
                  return Container(
                      height: 32.w,
                      child: Center(
                          child: Text(
                        item.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: _tabList.indexOf(item) == initIndex
                                ? 20.sp
                                : 18.sp,
                            color: ThemeUtils.bgColor),
                      )));
                }).toList(),
              )),
              trailing: Icon(Icons.search, color: ThemeUtils.bgColor),
              body: TabBarView(
                controller: _tabController,
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  StarPage(),
                  RecommendPage(),
                  KoreanDramaPage()
                ],
              ),
            ));
  }

  @override
  void dispose() {
    _pageController.dispose();
    _tabController.dispose();
    super.dispose();
  }
}
