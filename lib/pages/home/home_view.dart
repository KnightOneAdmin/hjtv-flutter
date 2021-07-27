import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/pages/home/home_logic.dart';

import 'package:hjtv_flutter/theme/theme_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class TabTitle {
  String title;
  int id;
  
  TabTitle(this.title, this.id);
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  final controller = Get.put(HomeLogic());

  late TabController _tabController;
  late PageController _pageController;
  late List<TabTitle> _tabList;

  var currentPage = 0;
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
    _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  void _onPageChanged(int index) {
    _tabController.animateTo(index, duration: Duration(milliseconds: 300));
  }

  @override
    Widget build(BuildContext context) {
      return GetBuilder<HomeLogic>(
          builder: (logic) => Scaffold(
            body: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 45,
                  child: TabBar(
                    labelColor: Colors.pinkAccent,
                    labelStyle: TextStyle(color: Colors.white, fontSize: 16),
                    unselectedLabelColor: Colors.blue,
                    unselectedLabelStyle: TextStyle(color: Colors.purple, fontSize: 14),
                    isScrollable: false,
                    controller: _tabController,
                    onTap: _changeTab,
                    tabs: _tabList.map((e) => Tab(text: e.title)).toList(),
                  ),
                )
              ],
            ),
          )
      );
    }

  @override
  void dispose() {
    _pageController.dispose();
    _tabController.dispose();
    super.dispose();
  }
}