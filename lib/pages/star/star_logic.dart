import 'package:get/get.dart';
import 'package:hjtv_flutter/pages/star/data/star_provider.dart';
import 'package:hjtv_flutter/pages/star/modles/star_modle.dart';

class StarLogic extends GetxController {
  String url =
      "http://api.hanju.koudaibaobao.com/api/series/indexV2?count=60&offset=0&_ts=${DateTime.now().microsecondsSinceEpoch}";
  final list = <SeriesList>[].obs;

  @override
  void onReady() {
    getStarVoideList();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getStarVoideList() async {
    await StarProvider.getBusnessList<StarModle>(url).then((value) {
      if (value != null) {
        if (value.seriesList!.isNotEmpty) {
          list.addAll(value.seriesList!);
        }
      }
    });
  }
}
