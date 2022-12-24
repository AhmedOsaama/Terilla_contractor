import 'package:flutter/material.dart';
import 'package:terilla_contractor/config/routes/app_navigator.dart';
import 'package:terilla_contractor/view/screens/main_home_screens/main_home_screens.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../data/demo_data.dart';
import '../../../widgets/my_button.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.homeBackGround),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 70),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${AppStrings.Terilla},',
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: AppStrings.weunderstandthattravelinglongdistances,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: AppColors.darkColot,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: '${AppStrings.Hello}, ',
                      ),
                      TextSpan(
                        text: DemoData.userData.name,
                        style: const TextStyle(
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: double.infinity, height: 24),
                Text(
                  AppStrings.Needtoshipgoods,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
                MyButton(
                  onClick: () {
                    AppNavigator.pushReplacement(context: context, screen: MainHomeScreen());
                    // Navigator.pushNamed(context, AppRoutes.addRequest);
                  },
                  title: AppStrings.RequestShipment,
                  width: double.infinity,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    ); //TODO: Change this
  }
}
