import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/pages/home/home_view.dart';

class MovieDetaisState {
  var count = 0.obs;
  late TabController tabController;
  late PageController pageController;

  late List<TabTitle> tabList = [
    new TabTitle("明星", 0),
    new TabTitle("推荐", 1),
    new TabTitle("韩剧", 2)
  ];

  MovieDetaisState() {}
}
