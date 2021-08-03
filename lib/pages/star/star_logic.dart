import 'package:get/get.dart';

import 'star_state.dart';

class StarLogic extends GetxController {
  var count = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increase() => ++count;
}
