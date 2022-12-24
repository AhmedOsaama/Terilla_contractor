import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:terilla_contractor/config/themes/app_theme.dart';
import 'package:terilla_contractor/view/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428,
            926),
        minTextAdapt: true,
        splitScreenMode: true,
      builder: (context,_) {
        return MaterialApp(
          title: 'Terilla Contractor',
          debugShowCheckedModeBanner: false,
          theme: getAppTheme(context),
          home: SplashScreen(),
        );
      }
    );
  }
}