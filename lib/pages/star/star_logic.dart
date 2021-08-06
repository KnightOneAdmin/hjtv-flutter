import 'package:get/get.dart';
import 'package:hjtv_flutter/pages/star/data/star_provider.dart';
import 'package:hjtv_flutter/pages/star/models/star_model.dart';

class StarLogic extends GetxController {
  String url =
      "http://api.hanju.koudaibaobao.com/api/series/indexV2?count=60&offset=0&_ts=${DateTime.now().microsecondsSinceEpoch}";
  final list = <SeriesList>[].obs;

  @override
  void onReady() {
    getStarVoidList();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getStarVoidList() async {
    await StarProvider.getBusinessList<StarModel>(url).then((value) {
      if (value != null) {
        if (value.seriesList!.isNotEmpty) {
          list.addAll(value.seriesList!);
        }
      }
    });
  }
}
