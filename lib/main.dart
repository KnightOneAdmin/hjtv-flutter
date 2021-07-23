import 'dart:io';
import 'dart:ui' as ui;

import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hjtv_flutter/routes/app_pages.dart';
import 'package:hjtv_flutter/routes/routes.dart';
import 'package:hjtv_flutter/theme/theme_controller.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
import 'package:hjtv_flutter/utils/log_utils.dart';
import 'package:hjtv_flutter/widget/unknown_page.dart';

import 'analytics/analytics.dart';
import 'analytics/analytics_navigator_observer.dart';
import 'lang/translations_messages.dart';

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///初始化 本地个性化存储
  SpUtil.getInstance();

  //初始化日志系统
  Log.init();

  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((value) => runApp(MyApp()));

  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatefulWidget {
  @override
  MyApp() {
    //主题配置
    Get.put(ThemeController());

    Analytics.setPageCollectionModeManual();
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    //主题配置
    Get.put(ThemeController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        navigatorObservers: [AnalyticsNavigatorObserver()],
        builder: (context, widget) {
          return FlutterEasyLoading(
            child: MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            ),
          );
        },
        unknownRoute:
            GetPage(name: '/notfound', page: () => UnknownRoutePage()),
        getPages: AppPages.routes,
        initialRoute: Routes.SPLASH,
        translations: Messages(),
        locale: ui.window.locale,
        fallbackLocale: Locale('zh', 'CN'),
        theme: ThemeUtils.light(),
        darkTheme: ThemeUtils.dark(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'), // 美国英语
          const Locale('zh', 'CN'), // 中文简体
          //其它Locales
        ],
      ),
      designSize: ui.Size(375, 664),
    );
  }
}
