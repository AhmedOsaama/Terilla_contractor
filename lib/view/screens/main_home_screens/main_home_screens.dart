import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:terilla_contractor/core/utils/icons_manager.dart';
import 'package:terilla_contractor/view/screens/main_home_screens/requests%20screen/requests_screen.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';
import '../../widgets/my_app_bar.dart';
import 'app drawer/App_drawer.dart';
import 'home screen/home_screen.dart';
import 'notification_screen/notification_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  int currentPageIndex = 1;

  void onChangePage(int pageIndex) {
    setState(() {
      currentPageIndex = pageIndex;
    });
  }

  Widget getBody(int pageIndex) {
    List<Widget> pages = [
      NotificationScreen(),
      HomeScreen(),
      const RequestsScreen(),
    ];
    return pages[pageIndex];
  }

  String? getAppBarTitle(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return AppStrings.History;
      case 2:
        return AppStrings.Requests;
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const AppDrawer(),
      appBar: MyAppBar(
        context,
        title: getAppBarTitle(currentPageIndex),
        leading: IconButton(
          onPressed: () {
            _key.currentState!.openDrawer();
          },
          icon: SvgPicture.asset(AppAssets.drawerIcon),
        ),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, AppRoutes.notification);
              },
              icon: Stack(
                children: [
                  SvgPicture.asset(AppAssets.notificationIcon),
                  // check if have notification or no
                  if (true)
                    Positioned(
                      top: 4,
                      right: 4,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                ],
              )),
          const SizedBox(width: 10),
        ],
      ),
      body: getBody(currentPageIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onChangePage,
        currentIndex: currentPageIndex,
        elevation: 30,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(notification2),
            activeIcon: SvgPicture.asset(notificationActive),
            label: AppStrings.notification,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(home),
            activeIcon: SvgPicture.asset(homeActive),
            label: AppStrings.home,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(truck),
            activeIcon: SvgPicture.asset(truckActive),
            label: AppStrings.shippings,
          ),
        ],
      ),
    );
  }
}
