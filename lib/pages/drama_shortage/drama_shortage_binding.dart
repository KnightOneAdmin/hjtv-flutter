import 'package:get/get.dart';

import 'drama_shortage_logic.dart';

class DramaShortageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DramaShortageLogic());
  }
}
