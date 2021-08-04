import 'package:get/get.dart';

import 'film_repo_logic.dart';

class FilmRepoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FilmRepoLogic());
  }
}
