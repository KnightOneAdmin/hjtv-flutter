
import 'package:get/get.dart';
import 'package:hjtv_flutter/pages/bottomNavigationBar/bottom_navigation_page.dart';
import 'package:hjtv_flutter/pages/drama/drama_binding.dart';
import 'package:hjtv_flutter/pages/drama/drama_view.dart';
import 'package:hjtv_flutter/pages/find/find_view.dart';
import 'package:hjtv_flutter/pages/find/find_binding.dart';
import 'package:hjtv_flutter/pages/home/home_view.dart';
import 'package:hjtv_flutter/pages/home/home_binding.dart';
import 'package:hjtv_flutter/pages/splash/splash_binding.dart';
import 'package:hjtv_flutter/pages/splash/splash_view.dart';

import 'routes.dart';

abstract class AppPages {
  static final List<GetPage> routes = [
    GetPage(
      name: Routes.BOTTOM_NAVIGATION,
      page: () => BottomNavigationPage(),
      transition: Transition.fade,
    ),
    GetPage(
        name: Routes.SPLASH,
        page: () => SplashPage(),
        transition: Transition.fade,
        binding: SplashBinding()
    ),
    GetPage(
        name: Routes.HOME,
        page: () => HomePage(),
        transition: Transition.fade,
        binding: HomeBinding()
    ),
    GetPage(
        name: Routes.FIND,
        page: () => FindPage(),
        transition: Transition.fade,
        binding: FindBinding()
    ),
    GetPage(
        name: Routes.DRAMA,
        page: () => DramaPage(),
        transition: Transition.fade,
        binding: DramaBinding()
    ),
  ];
}
