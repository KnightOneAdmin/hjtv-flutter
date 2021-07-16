import 'package:get/get.dart';

import 'find_logic.dart';

class findBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => findLogic());
  }
}
