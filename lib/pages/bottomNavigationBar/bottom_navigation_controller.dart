
import 'package:get/get.dart';
import 'package:hjtv_flutter/analytics/analytics.dart';
import 'package:hjtv_flutter/common/Constants.dart';
import 'package:hjtv_flutter/pages/bottomNavigationBar/bottom_navigation_state.dart';
import 'package:hjtv_flutter/utils/dart_notification_center.dart';

class BottomNavigationController extends GetxController {

 static BottomNavigationController to = Get.find<BottomNavigationController>();
 static final analytics = [AnalyticsEvent.YELLOWPAGES,AnalyticsEvent.BUSINESS,AnalyticsEvent.PUBLISH,AnalyticsEvent.INFORMATION,AnalyticsEvent.MINE];
 int _currentIndex = -1;



 set currentIndex(value){
  if (_currentIndex != -1){
   Analytics.onPageEnd(analytics[_currentIndex]);
  }
   _currentIndex = value;

  Analytics.onEvent(AnalyticsEvent.TABBAR_EVENTS, {AnalyticsEvent.EVENT_NAME:analytics[value]});
  if (_currentIndex != -1){
   Analytics.onPageStart(analytics[_currentIndex]);
  }

  if(_currentIndex == 0){
   DartNotificationCenter.post(channel: Constants.kUpdateGiveBookStatus);
  }
  //update();
 }
 get currentIndex=>_currentIndex;

 BottomNavigationState state = BottomNavigationState();

 changeIndex(int index) {
  state.selectedIndex.value = index;
 }

  @override
  void onInit() {

    super.onInit();
  }

 @override
  void onClose() {
    // Get.delete<HomeController>();
    // Get.delete<YellowPagesController>();
    // Get.delete<InformationController>();
    super.onClose();
  }
}