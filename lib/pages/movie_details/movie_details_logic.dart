import 'package:get/get.dart';

import 'movie_detais_state.dart';

class MovieDetaisLogic extends GetxController {
  final state = MovieDetaisState();

  void add() => state.count++;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
