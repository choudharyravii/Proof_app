import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData of(context) {
    var theme = Theme.of(context);
    return theme.copyWith(
        // primaryColor: AppColors.black,
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        colorScheme: ColorScheme.fromSwatch(
          accentColor:
              AppColors.limeGreen, // but now it should be declared like this
        ),
        scaffoldBackgroundColor: AppColors.white,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: AppColors.black,
              displayColor: AppColors.black,
            ),
        primaryColorLight: AppColors.darkLimeGreen,
        bottomAppBarColor: AppColors.limeGreen,
        backgroundColor: AppColors.black,
        dialogBackgroundColor: AppColors.white,
        // errorColor: AppColors.greyAccent,
        dividerColor: AppColors.greyDivider);
  }
}

class AppColors {
  static const Color darkLimeGreen = Color(0xff00AC9B);
  static const Color limeGreen = Color(0xff08AE9E);
  static const Color neonGreen = Color(0xff00D3B2);
  static const Color greenforest = Color(0xff67FF4B);
  static const Color greenuserprofile = Color(0xff51D2B1);
  static const Color white = Color(0xffFFFFFF);
  static const Color whitelig = Color.fromARGB(255, 241, 237, 237);
  static const Color whiteBottomNavigation = Color(0xffFFFFF0);
  static const Color greyBottomNavigation = Color(0xffBEB3B3);
  static const Color greyDivider = Color(0xff989898);
  static const Color greyicon = Color.fromARGB(255, 116, 115, 115);
  static const Color greyShadow = Color(0xff00004E);
  static const Color black = Color(0xff150000);
  static const Color skin = Color(0xffFC9E9E);
  static const Color greyText = Color(0xff919191);
  static const Color green = Color(0xff057B00);
  static const Color greenReview = Color(0xff23806D);
  static const Color greenchat = Color(0xff00B19E);
  static const Color greytextfield = Color.fromARGB(255, 215, 214, 214);
  static const Color red = Colors.red;
  static const Color boxGreyColor = Colors.grey;
  static const Color greylight = Color(0xffF5F5F5);
  static const Color greydarksemi = Color(0xffE5E5E5);
  static const Color greyActivity = Color(0xff707070);
  static const Color greyintro = Color(0xff676571);
  static const Color orangeLikedCarrot = Color(0xffCE831C);
  static const Color bluelink = Color(0xff3C82FF);
  static const Color yellowdot1 = Color.fromARGB(255, 250, 254, 195);
  static const Color yellowdot2 = Color.fromARGB(255, 245, 251, 159);
  static const Color yellowdot3 = Color.fromARGB(255, 233, 248, 36);
  static const Color greendot1 = Color.fromARGB(255, 154, 253, 228);
  static const Color greendot2 = Color.fromARGB(255, 126, 254, 222);
  static const Color greendot3 = Color.fromARGB(255, 88, 252, 211);
}

class FontFamily {
  static const quicksand = "Quicksand";
  static const gillSans = "GillSans";
  static const futuraPT = "futur";
  static const futuram = "futuram";
  static const sfProText = "SF Pro Text";
  static const basicSans = "Basic Sans";
  static const gibson = "Gibson";
  static const muli = "Muli";
}
