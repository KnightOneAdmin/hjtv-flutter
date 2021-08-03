import 'package:get/get.dart';

import 'korean_drama_logic.dart';

class KoreanDramaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KoreanDramaLogic());
  }
}
