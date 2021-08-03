import 'package:get/get.dart';
import 'package:hjtv_flutter/pages/bottomNavigationBar/bottom_navigation_page.dart';
import 'package:hjtv_flutter/pages/movie_details/movie_details_binding.dart';
import 'package:hjtv_flutter/pages/movie_details/movie_details_view.dart';
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
        binding: SplashBinding()),
    GetPage(
        name: Routes.MOVIE_DETAIS,
        page: () => MovieDetailsPage(),
        transition: Transition.fade,
        binding: MovieDetaisBinding()),
  ];

}
