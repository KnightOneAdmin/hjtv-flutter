import 'package:get/get.dart';

import 'drama_logic.dart';

class DramaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DramaLogic());
  }
}
