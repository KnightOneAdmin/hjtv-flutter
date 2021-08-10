import 'package:dio/dio.dart';
import 'package:hjtv_flutter/pages/recommend/models/recommend_model.dart';

class RecommendProvider {
  static Future<T?> getBusinessList<T>(String url) async {
    try {
      return await Dio().get(url).then((response) {
        if(response != null) {
          return RecommendModel.fromJson(response.data) as T;
        }
      });
    } catch (e) {
      return null;
    }
  }
}