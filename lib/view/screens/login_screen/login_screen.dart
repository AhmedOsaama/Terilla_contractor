import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:terilla_contractor/config/routes/app_navigator.dart';
import 'package:terilla_contractor/view/screens/main_home_screens/home%20screen/home_screen.dart';
import 'package:terilla_contractor/view/screens/signup_screen/signup_screen.dart';
import 'package:terilla_contractor/view/widgets/my_text_field.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../widgets/my_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                  width: double.infinity,
                ),
                Image.asset(AppAssets.terillaLogo),
                Image.asset(AppAssets.terillaName),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      AppStrings.SignIn,
                      style: const TextStyle(
                        color: AppColors.head,
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                MyTextField(
                  hint: AppStrings.Email,
                  onChange: (v) {},
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                MyTextField(
                  hint: AppStrings.password,
                  onChange: (v) {},
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                SizedBox(height: 16.h),
                MyButton(
                  onClick: () {
                    //TODO signin
                    AppNavigator.pushReplacement(context: context, screen: HomeScreen());
                    // Navigator.pushReplacementNamed(context, AppRoutes.home);
                  },
                  title: AppStrings.SignIn,
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: TextButton(
            onPressed: () {
              AppNavigator.pushReplacement(context: context, screen: SignupScreen());
            },
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 16,
                  color: AppColors.head,
                ),
                children: [
                  TextSpan(
                    text: AppStrings.Donthaveanaccount,
                  ),
                  TextSpan(
                    text: " ${AppStrings.SignUp}",
                    style: const TextStyle(
                      color: AppColors.primary,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
