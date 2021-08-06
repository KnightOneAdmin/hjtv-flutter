import 'package:dio/dio.dart';
import 'package:hjtv_flutter/pages/home/models/home_model.dart';

class HomeProvider {
  static Future<T?> getBusinessList<T>(String url) async {
    try {
      return await Dio().get(url).then((response) {
        return HomeModel.fromJson(response.data) as T;
      });
    } catch (e) {

    }
  }
}