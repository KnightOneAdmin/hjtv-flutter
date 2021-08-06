import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hjtv_flutter/pages/home/data/home_provider.dart';
import 'package:hjtv_flutter/pages/home/models/home_model.dart';

class HomeLogic extends GetxController{
  String url =
      "http://api.hanju.koudaibaobao.com/api/series/indexV2?count=60&offset=0&_ts=${DateTime.now().microsecondsSinceEpoch}";
  final list = <SeriesList>[].obs;

  @override
  void onReady() {
    getHomeDataList();
    super.onReady();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void getHomeDataList() async {
    await HomeProvider.getBusinessList<HomeModel>(url).then((value) {
      if (value != null) {
        if (value.seriesList!.isNotEmpty) {
          list.addAll(value.seriesList!);
        }
      }
    });
  }
}