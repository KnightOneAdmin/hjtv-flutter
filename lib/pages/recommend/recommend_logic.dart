import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/pages/recommend/data/recommend_provider.dart';
import 'package:hjtv_flutter/pages/recommend/models/recommend_model.dart';
import 'recommend_state.dart';

class RecommendLogic extends GetxController {
  final state = RecommendState();
  String url =
      "http://api.hanju.koudaibaobao.com/api/index/recommend_v2?_ts=${DateTime.now().microsecondsSinceEpoch}";
  final listBanner = <ItemModel>[].obs;
  final listRecommend = <ItemModel>[].obs;

  @override
  void onReady() {
    getRecommendDataList();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getRecommendDataList() async {
    await RecommendProvider.getBusinessList<RecommendModel>(url).then((value) {
      if (value != null) {
        if (value.recsList!.isNotEmpty) {
          value.recsList!.forEach((element) {
            if(element.type == 5) {
              listRecommend.addAll(element.items!);
            } else if (element.type == 1) {
              listBanner.addAll(element.items!);
            }
          });
        }
      }
    });
  }
}
