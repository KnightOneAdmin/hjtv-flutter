import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hjtv_flutter/common/Clours.dart';
import 'package:hjtv_flutter/routes/routes.dart';
import 'package:hjtv_flutter/theme/theme_utils.dart';
import 'package:hjtv_flutter/utils/image_utils.dart';

typedef ScrollToTopCallback = void Function();

class PlatformScaffold extends StatelessWidget {
  final Widget body;
  Widget? title;
  Widget? leading;
  Widget? trailing;
  bool? showBack;
  bool resizeToAvoidBottomInset;
  Widget? floatingActionButton;
  PlatformScaffold(
      {Widget? title,
      required this.body,
      Widget? leading,
      bool showBack = false,
      GestureTapCallback? onTap,
      Widget? trailing,
      String? lable,
      this.resizeToAvoidBottomInset = true,
      Widget? floatingActionButton}) {

    if (leading == null && showBack == true) {
      leading = GestureDetector(
        child: Container(
          child: Row(
            children: [
              ImageUtils('navigation_back',width: 18,height: 18,color:ThemeUtils.isDarkModel
                  ? Colours.dark_text
                  : Color(0xff2C383C), ),
              Padding(
                padding: EdgeInsets.only(left: 3),
                child: Text(
                  '返回',
                  style: TextStyle(
                      color: ThemeUtils.isDarkModel
                          ? Colours.dark_text
                          : Color(0xff2c383c),
                      fontSize: 16.sp),
                ),
              )
            ],
          ),
        ),
        onTap: onTap != null
            ? onTap
            : () {
                Routes.back();
              },
      );
    }

    if (lable != null) {
      this.title = Text(
        lable,
        style: ThemeUtils.navigationTitle,
      );
    } else {
      this.title = title;
    }
    this.leading = leading;
    this.showBack = showBack;
    this.trailing = trailing;
    this.floatingActionButton = floatingActionButton;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      appBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        backgroundColor: ThemeUtils.navigationBarColor,
        border: Border(
          bottom: BorderSide(
            color: ThemeUtils.navigationBarColor,
            width: 0.0, // One physical pixel.
            style: BorderStyle.solid,
          ),
        ),
        middle: title,
        leading: leading,
        trailing: trailing,
        heroTag: 'ms',
        transitionBetweenRoutes: false,
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: body,
    );
  }
}
