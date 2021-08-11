import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/pages/recommend/data/recommend_provider.dart';
import 'package:hjtv_flutter/pages/recommend/models/recommend_model.dart';
import 'recommend_state.dart';

class RecommendLogic extends GetxController {
  final state = RecommendState();
  String url =
      "http://api.hanju.koudaibaobao.com/api/index/recommend_v2?_ts=${DateTime.now().microsecondsSinceEpoch}";
  final listBanner = <Item>[].obs;
  final listRecommend = <Item>[].obs;

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
    await RecommendProvider.getBusinessList<Recomment>(url).then((value) {
      if (value != null) {
        if (value.recs!.isNotEmpty) {
          value.recs!.forEach((element) {
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
