import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../data/demo_data.dart';
import '../../../widgets/circle_image.dart';
import '../../../widgets/my_button.dart';
import '../../../widgets/profile_analitc.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.darkColot,
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
                      Text(
                        DemoData.userData.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: AppColors.primary,
                            size: 18,
                          ),
                          Text(
                            DemoData.userData.rank,
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Cairo",
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  ProfileAnalytics(
                    iconUrl: AppAssets.profShipmentsIcon,
                    value: DemoData.userData.totalShipments.toString(),
                    name: AppStrings.TotalShipments,
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: MyButton(
                  onClick: () {
                    // Navigator.pushNamed(context, AppRoutes.profile);
                  },
                  title: AppStrings.Viewprofile,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 2,
                width: double.infinity,
                color: AppColors.data,
              ),
              const SizedBox(height: 24),
              InkWell(
                onTap: () {
                  // TODO send friend invtation
                },
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppAssets.giftIcon),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          AppStrings.InviteFriends,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Navigator.pushNamed(context, AppRoutes.notification);
                },
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppAssets.notificationIcon,
                          color: Colors.white),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          AppStrings.Notifications,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // TODO logout
                },
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppAssets.logoutIcon),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          AppStrings.Logout,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
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
