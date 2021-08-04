import 'package:get/get.dart';

import 'my_follow_logic.dart';

class MyFollowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyFollowLogic());
  }
}
