import 'package:get/get.dart';

import 'movie_details_logic.dart';

class MovieDetaisBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MovieDetaisLogic());
  }
}
