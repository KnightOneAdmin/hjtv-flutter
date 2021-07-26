import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/pages/drama/drama_view.dart';
import 'package:hjtv_flutter/pages/find/find_view.dart';
import 'package:hjtv_flutter/pages/home/home_view.dart';

class BottomNavigationState {
  late RxInt selectedIndex;

  late List<Widget> pageList;
  late PageController pageController;

  BottomNavigationState() {
    selectedIndex = 0.obs;
    pageList = [HomePage(), FindPage(), DramaPage()];
    /// 页面控制器
    pageController = PageController();
  }
}