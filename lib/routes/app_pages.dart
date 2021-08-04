import 'package:get/get.dart';
import 'package:hjtv_flutter/pages/bottomNavigationBar/bottom_navigation_page.dart';
import 'package:hjtv_flutter/pages/drama_shortage/drama_shortage_binding.dart';
import 'package:hjtv_flutter/pages/drama_shortage/drama_shortage_view.dart';
import 'package:hjtv_flutter/pages/film_repo/film_repo_binding.dart';
import 'package:hjtv_flutter/pages/film_repo/film_repo_view.dart';
import 'package:hjtv_flutter/pages/movie_details/movie_details_binding.dart';
import 'package:hjtv_flutter/pages/movie_details/movie_details_view.dart';
import 'package:hjtv_flutter/pages/my_follow/my_follow_binding.dart';
import 'package:hjtv_flutter/pages/my_follow/my_follow_view.dart';
import 'package:hjtv_flutter/pages/ranking/ranking_binding.dart';
import 'package:hjtv_flutter/pages/ranking/ranking_view.dart';
import 'package:hjtv_flutter/pages/search/search_binding.dart';
import 'package:hjtv_flutter/pages/search/search_view.dart';
import 'package:hjtv_flutter/pages/splash/splash_binding.dart';
import 'package:hjtv_flutter/pages/splash/splash_view.dart';
import 'package:hjtv_flutter/pages/today_recommend/today_recommend_binding.dart';
import 'package:hjtv_flutter/pages/today_recommend/today_recommend_view.dart';

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
    GetPage(
        name: Routes.SEARCH,
        page: () => SearchPage(),
        transition: Transition.fade,
        binding: SearchBinding()),
    GetPage(
        name: Routes.TODAY_RECOMMEND,
        page: () => TodayRecommendPage(),
        transition: Transition.fade,
        binding: TodayRecommendBinding()),
    GetPage(
        name: Routes.FILM_REPO,
        page: () => FilmRepoPage(),
        transition: Transition.fade,
        binding: FilmRepoBinding()),
    GetPage(
        name: Routes.RANKING,
        page: () => RankingPage(),
        transition: Transition.fade,
        binding: RankingBinding()),
    GetPage(
        name: Routes.MY_FOLLOW,
        page: () => MyFollowPage(),
        transition: Transition.fade,
        binding: MyFollowBinding()),
    GetPage(
        name: Routes.DRAMA_SHORTAGE,
        page: () => DramaShortagePage(),
        transition: Transition.fade,
        binding: DramaShortageBinding()),
  ];
}
