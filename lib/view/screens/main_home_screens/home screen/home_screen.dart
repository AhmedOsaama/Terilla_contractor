import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:terilla_contractor/config/routes/app_navigator.dart';
import 'package:terilla_contractor/core/utils/icons_manager.dart';
import 'package:terilla_contractor/core/utils/style_utils.dart';
import 'package:terilla_contractor/view/components/request_container.dart';
import 'package:terilla_contractor/view/components/request_info.dart';
import 'package:terilla_contractor/view/screens/car_selection_screen/car_selection_screen.dart';
import 'package:terilla_contractor/view/screens/main_home_screens/main_home_screens.dart';
import 'package:terilla_contractor/view/widgets/request_widget.dart';

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
    return SingleChildScrollView(
      child: Container(width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Color.fromRGBO(241, 242, 246, 1)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text(AppStrings.requests,style: TextStyles.textViewBold17.copyWith(color: Color.fromRGBO(166, 184, 204, 1)),),
            ...List.generate(3, (index) =>
                RequestWidget(children: [
                  RequestContainer(
                      child: Row(
                        children: [
                          RequestInfo(iconPath: truck2, infoCategory: AppStrings.productType, valueText: AppStrings.product),
                          Spacer(),
                          RequestInfo(iconPath: weight, infoCategory: AppStrings.shipmentWeight, valueText: "50 Tons"),
                          Spacer(),
                        ],
                      )),
                  SizedBox(height: 16.h,),
                  RequestContainer(
                      child: Row(
                        children: [
                          RequestInfo(iconPath: calendar, infoCategory: AppStrings.shipmentDate, valueText: "2021/2/23"),
                          Spacer(),
                          RequestInfo(iconPath: clock, infoCategory: AppStrings.shipmentTime, valueText: "10:00 AM"),
                          Spacer(),
                        ],
                      )),
                  SizedBox(height: 16.h,),
                  RequestContainer(child: Column(
                    children: [
                      RequestInfo(iconPath: location, infoCategory: AppStrings.shipmentLocation, valueText: "القليوبية - مدينة العبور - مزارع عرابي - شارع 23 - مبنى 15"),
                      Divider(height: 20.h,),
                      RequestInfo(iconPath: location, infoCategory: AppStrings.deliveryLocation, valueText: "بنها - كفر السرايا - شارع 59 - مزرعة")
                    ],
                  )),
                  SizedBox(height: 16.h,),
                  RequestContainer(
                      child: Row(
                        children: [
                          RequestInfo(iconPath: money, infoCategory: AppStrings.shipmentPrice, valueText: "1300 EGP"),
                          Spacer(),
                          RequestInfo(infoCategory: AppStrings.shipmentType, valueText: "Services"),
                          Spacer(),
                        ],
                      )),
                  SizedBox(height: 16.h,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Expanded(child: ElevatedButton(
                          onPressed: () => AppNavigator.push(context: context, screen: CarSelectionScreen()),
                          child: Text("Transfer to a car",style: TextStyles.textViewSemiBold14,),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            backgroundColor: AppColors.lightPrimary,
                          ),
                        )),
                        SizedBox(width: 20.w,),
                        Expanded(child: ElevatedButton(
                          onPressed: (){},
                          child: Text("Abort",style: TextStyles.textViewSemiBold14,),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            backgroundColor: AppColors.darkPrimary,
                            elevation: 0
                          ),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h,),
                ]))
          ],
        ),
      ),
    );
  }
}
