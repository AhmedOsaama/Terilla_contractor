import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:terilla_contractor/config/routes/app_navigator.dart';
import 'package:terilla_contractor/core/utils/assets_manager.dart';
import 'package:terilla_contractor/core/utils/icons_manager.dart';
import 'package:terilla_contractor/core/utils/style_utils.dart';
import 'package:terilla_contractor/view/screens/car_selection_screen/car_selection_screen.dart';
import 'package:terilla_contractor/view/screens/profile_screen/all_cars_screen.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../data/demo_data.dart';
import '../../../widgets/circle_image.dart';
import '../../../widgets/my_button.dart';
import '../../../widgets/profile_analitc.dart';
import '../../profile_screen/profile_screen.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 56),
              Row(
                children: [
                  CircleImage(
                    imageUrl: DemoData.userData.image,
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStrings.contractor,style: TextStyles.textViewMedium16.copyWith(color: AppColors.darkPrimary),),
                      SizedBox(height: 10.h,),
                      Text(
                        DemoData.userData.name,
                        style: TextStyles.textViewRegular18.copyWith(color: AppColors.lightPrimary),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProfileAnalytics(
                    iconUrl: AppAssets.profRateIcon,
                    value: '${DemoData.userData.rate}/10',
                    name: AppStrings.Ratings,
                  ),
                  ProfileAnalytics(
                    iconUrl: AppAssets.profRequestsIcon,
                    value: DemoData.userData.totalRequests.toString(),
                    name: AppStrings.TotalRequests,
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: MyButton(
                  onClick: () {
                    AppNavigator.push(context: context, screen: ProfileScreen());
                  },
                  title: AppStrings.Viewprofile,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () {
                  AppNavigator.push(context: context, screen: AllCarsScreen());
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.black12)
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(truck2,width: 21,height: 22,),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          AppStrings.cars,
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppColors.darkPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () {
                  // TODO logout
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.black12)
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppAssets.logoutIcon,color: AppColors.lightPrimary,),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          AppStrings.Logout,
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppColors.darkPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
