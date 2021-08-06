import 'package:dio/dio.dart';
import 'package:hjtv_flutter/pages/star/models/star_model.dart';

class StarProvider {
  static Future<T?> getBusinessList<T>(String url) async {
    try {
      return await Dio().get(url).then((response) {
        if (response != null) {
          return StarModel.fromJson(response.data) as T;
        }
      });
    } catch (e) {
      return null;
    }
  }
}
