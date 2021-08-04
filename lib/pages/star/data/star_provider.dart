import 'package:dio/dio.dart';
import 'package:hjtv_flutter/pages/star/modles/star_modle.dart';

class StarProvider {
  static Future<T?> getBusnessList<T>(String url) async {
    try {
      return await Dio().get(url).then((response) {
        if (response != null) {
          return StarModle.fromJson(response.data) as T;
        }
      });
    } catch (e) {
      return null;
    }
  }
}
