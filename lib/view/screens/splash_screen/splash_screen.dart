import 'package:flutter/material.dart';
import 'package:terilla_contractor/config/routes/app_navigator.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_constants.dart';
import '../login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //TODO if not first time go to home page
    Future.delayed(Duration(milliseconds: AppConstants.splashWaitingTime), () {
      AppNavigator.pushReplacement(context: context, screen: LoginScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkColor,
      body: Center(
        child: Image.asset(
          AppAssets.splashLogo,
        ),
      ),
    );
  }
}
