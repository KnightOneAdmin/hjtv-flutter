import 'package:get/get.dart';

import 'drama_logic.dart';

class dramaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => dramaLogic());
  }
}
