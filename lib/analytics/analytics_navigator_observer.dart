
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/analytics/analytics.dart';
import 'package:hjtv_flutter/pages/bottomNavigationBar/bottom_navigation_controller.dart';


class AnalyticsNavigatorObserver extends NavigatorObserver{


  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    //统计
    if (route.settings.name != null) {

      if(previousRoute != null){
        print('didPush route ${route.settings.name},previousRoute ${previousRoute.settings.name}');
        if(previousRoute.settings.name == '/bottomNavigation'){
          if(BottomNavigationController.to != null){
            try {
              onPageEnd(BottomNavigationController.analytics[BottomNavigationController.to.currentIndex]);
            } catch (e, s) {
              print(s);
            }
          }

        } else {

          if(previousRoute.settings.name != null && previousRoute.settings.name != '/'){
            String previousViewName =  previousRoute.settings.name!.substring(1);
            onPageEnd(previousViewName);
          }


        }
      }

      String viewName = route.settings.name!.substring(1);
      onPageStart(viewName);

    }
    super.didPush(route, previousRoute);

  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {

    //统计
    if (route.settings.name != null){

      String viewName = route.settings.name!.substring(1);
      onPageEnd(viewName);

      if(previousRoute != null){
        print(' didPop route ${route.settings.name},previousRoute ${previousRoute.settings.name}');
        if(previousRoute.settings.name == '/bottomNavigation'){
          if(BottomNavigationController.to != null){
            try {
              onPageStart(BottomNavigationController.analytics[BottomNavigationController.to.currentIndex]);
            } catch (e, s) {
              print(s);
            }
          }

        } else {

          if(previousRoute.settings.name != null && previousRoute.settings.name != '/'){
            String previousViewName =  previousRoute.settings.name!.substring(1);
            onPageStart(previousViewName);
          }
        }
      }

    }

    super.didPop(route, previousRoute);
  }

  void onPageEnd(String viewName) {


    if (viewName != null) {

      if(viewName == 'bottomNavigation' || viewName.length == 0){
        return;
      }

      if (viewName == 'webView'){

        if (Get.arguments != null ){
          if (Get.arguments['pageName'] != null) {
            Analytics.onPageEnd(Get.arguments['pageName']);
          }
        }

      } else if (viewName == 'search') {
        if (Get.arguments != null) {
          if (Get.arguments == true) {
            Analytics.onPageEnd('home_search');
          } else {
            Analytics.onPageEnd('yellow_search');
          }
        }
      } else{
        final viewNames = viewName.split('?');
        Analytics.onPageEnd(viewNames.first);
      }

    }
  }

  // 进入页面统计
  void onPageStart(String viewName) {

    if (viewName != null) {

      if(viewName == 'bottomNavigation' || viewName.length == 0){
        return;
      }

      if (viewName == 'webView') {
        print('---- ${Get.arguments}');
        if (Get.arguments != null) {
          if (Get.arguments['pageName'] != null) {
            Analytics.onPageStart(Get.arguments['pageName']);
          }
        }
      } else if (viewName == 'search') {
        if (Get.arguments != null) {
          if (Get.arguments == true) {
            Analytics.onPageStart('home_search');
          } else {
            Analytics.onPageStart('yellow_search');
          }
        }
      } else if (viewName == 'userinfo') {
        if (Get.arguments != null) {
          if (Get.arguments == true) {
            Analytics.onPageStart('weixin_userinfo');
          } else {
            Analytics.onPageStart('userinfo');
          }
        }
      } else {
        final viewNames = viewName.split('?');
        Analytics.onPageStart(viewNames.first);
      }
    }
  }
}