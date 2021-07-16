import 'package:get/get.dart';

import 'splash_logic.dart';

class splashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => splashLogic());
  }
}
