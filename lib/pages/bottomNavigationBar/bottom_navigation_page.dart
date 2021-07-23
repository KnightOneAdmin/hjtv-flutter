import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/common/Clours.dart';
import 'package:hjtv_flutter/pages/drama/drama_view.dart';
import 'package:hjtv_flutter/pages/find/find_view.dart';
import 'package:hjtv_flutter/pages/home/home_view.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
import 'package:hjtv_flutter/utils/image_utils.dart';

import 'bottom_navigation_controller.dart';

class BottomNavigationPage extends StatefulWidget {
  _BottomNavigationSate createState() => _BottomNavigationSate();
}

class _BottomNavigationSate extends State<BottomNavigationPage> {
  int currentIndex = 0;

  ///items
  late List<BottomNavigationBarItem> items;

  ///pages
  List<Widget> pages = [HomePage(), Container(), Container()];

  ///item信息  map - > {'imageName',"selectedImageName",'title'}
  List<Map<String, String>> itemInfos = [
    {
      'imageName': 'bottom_bar_ypage',
      'selectedImageName': 'bottom_bar_ypage_selected',
      'title': '首页',
    },
    {
      'imageName': 'bottom_bar_business',
      'selectedImageName': 'bottom_bar_business_selected',
      'title': '发现',
    },
    {
      'imageName': 'bottom_bar_information',
      'selectedImageName': 'bottom_bar_information_selected',
      'title': '追剧',
    }
  ];

  @override
  void initState() {
    Get.put(BottomNavigationController());
    BottomNavigationController.to.currentIndex = 0;
    items = itemInfos.map((itemInfo) {
      return BottomNavigationBarItem(
        icon: ImageUtils(itemInfo['imageName']!,
            width: 25, height: 25, fit: BoxFit.cover),
        activeIcon: ImageUtils(itemInfo['selectedImageName']!,
            width: 25, height: 25, fit: BoxFit.cover),
        label: itemInfo['title'],
      );
    }).toList();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
        builder: (_) => Scaffold(
              body: IndexedStack(
                index: currentIndex,
                children: pages,
              ),
              bottomNavigationBar: CupertinoTabBar(
                backgroundColor: ThemeUtils.bottomNavigationBarColor,
                items: items,
                activeColor: Colours.app_main,
                inactiveColor: ThemeUtils.inactiveColor,
                currentIndex: currentIndex,
                onTap: (index) {
                  final w = pages[index];
                  if (w.runtimeType.toString() == 'Container') {
                    if (index == 1) {
                      pages.removeAt(index);
                      pages.insert(index, FindPage());
                    } else if (index == 2) {
                      pages.removeAt(index);
                      pages.insert(index, DramaPage());
                    }
                  }
                  if (currentIndex != index) {
                    setState(() {
                      currentIndex = index;
                    });
                    BottomNavigationController.to.currentIndex = index;
                  }
                },
                border: Border.all(color: Colors.transparent),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
            ));
  }
}
