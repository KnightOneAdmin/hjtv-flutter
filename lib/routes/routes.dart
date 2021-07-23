
import 'package:get/get.dart';

abstract class Routes{

  static const String BOTTOM_NAVIGATION = "/bottomNavigation";
  static const String SPLASH = "/splash";
  static get arguments => Get.arguments;

  static Future<T?>? toNamed<T>(
      String page, {
        dynamic arguments,
        int? id,
        bool preventDuplicates = false,
        Map<String, String>? parameters,
      }){

    return Get.toNamed(page,arguments:arguments,id: id,preventDuplicates:preventDuplicates,parameters: parameters );

  }

  static Future<T?>? offAllNamed<T>(String newRouteName, {
    dynamic arguments,
  }){
    return Get.offAllNamed(newRouteName, arguments: arguments);
  }

  static Future<T?>? offNamed<T>(String newRouteName){

    return Get.offNamed(newRouteName);

  }

  static get overlayContext =>Get.overlayContext;
  Map<String, String?> get parameters => Get.parameters;

  static Future<bool> delete<S>({String? tag, bool force = false}) async => Get.delete<S>(tag: tag, force: force);

  static void back<T>({
    T? result,
    bool closeOverlays = false,
    bool canPop = true,
    int? id,
  }){
    Get.back(result: result,closeOverlays: closeOverlays,canPop: canPop,id: id);
  }
}