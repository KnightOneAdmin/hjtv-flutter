import 'package:get/get.dart';

import 'today_recommend_logic.dart';

class TodayRecommendBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TodayRecommendLogic());
  }
}
