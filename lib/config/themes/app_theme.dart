import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_constants.dart';

ThemeData getAppTheme(BuildContext context) {
  return ThemeData(
    // colors
    primaryColor: AppColors.primary,
    secondaryHeaderColor: AppColors.darkColot,
    splashColor: AppColors.border,
    highlightColor: AppColors.border.withOpacity(0.5),
    disabledColor: AppColors.data,
    scaffoldBackgroundColor: Colors.white,

    // app bar
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: Colors.white,
      elevation: AppConstants.appBarElevation,
      shadowColor: AppColors.data.withOpacity(0.1),
      foregroundColor: AppColors.darkColot,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      titleTextStyle: TextStyle(
        color: AppColors.darkColot,
        fontSize: 18.sp,
        fontFamily: "Poppins",
      ),
    ),

    // buttontheme
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      buttonColor: AppColors.primary,
      splashColor: Colors.white,
    ),

    // elevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.lightPrimary),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.primary,
    ),
    textTheme: Theme.of(context).textTheme.apply(
        bodyColor: AppColors.body, fontFamily: "Cairo"),

    // input theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(18),
      hintStyle: const TextStyle(
        color: AppColors.body,
        fontWeight: FontWeight.w300,
        fontFamily: "Cairo",
      ),
      errorStyle: const TextStyle(
        color: AppColors.red,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide:
        const BorderSide(color: AppColors.border),
        borderRadius: BorderRadius.circular(5),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
        const BorderSide(color: AppColors.primary),
        borderRadius: BorderRadius.circular(5),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.red),
        borderRadius: BorderRadius.circular(5),
      ),
      suffixIconColor: AppColors.body,
    ),

    // bottom navigation bar theme
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      elevation: AppConstants.bottomNavBarElevation,
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        fontFamily: "Cairo",
      ),
      selectedIconTheme: IconThemeData(),
      selectedLabelStyle: TextStyle(
        fontSize: 14,
        fontFamily: "Cairo",
      ),
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.head,
      showUnselectedLabels: true,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.green,
      iconSize: 40,
    ),
  );
}
