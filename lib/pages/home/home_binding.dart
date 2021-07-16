import 'package:get/get.dart';

import 'home_logic.dart';

class homeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => homeLogic());
  }
}
