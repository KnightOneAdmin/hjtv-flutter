import 'package:get/get.dart';

import 'episodes_logic.dart';

class EpisodesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EpisodesLogic());
  }
}
