import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:terilla_contractor/core/utils/app_colors.dart';
import 'package:terilla_contractor/core/utils/assets_manager.dart';
import 'package:terilla_contractor/core/utils/icons_manager.dart';
import 'package:terilla_contractor/core/utils/style_utils.dart';
import 'package:terilla_contractor/main.dart';
import 'package:terilla_contractor/view/components/client_info.dart';
import 'package:terilla_contractor/view/components/request_container.dart';
import 'package:terilla_contractor/view/components/request_info.dart';
import 'package:terilla_contractor/view/components/transportation_info.dart';
import 'package:terilla_contractor/view/widgets/my_app_bar.dart';

import '../../../config/routes/app_navigator.dart';
import '../../../core/utils/app_strings.dart';

class TransportationDetailScreen extends StatelessWidget {
  const TransportationDetailScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(AppStrings.beginTransportation,),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: AppColors.lightPrimary,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: MyAppBar(context,
      title: "763#",
        actions: [
          IconButton(onPressed: (){
            //TODO: Delete Transportation
          }, icon: Icon(Icons.delete_rounded))
        ]
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: AppColors.darkPrimary,
              child: Row(
                children: [
                  Container(
                    width: 11.w,
                    height: 44.h,
                    color: Color.fromRGBO(224, 181, 71, 1),
                  child: Container(),),
                  SizedBox(width: 17.w,),
                  SvgPicture.asset(vehicle),
                  SizedBox(width: 10.w,),
                  Text(AppStrings.transportationWillStartIn,style: TextStyles.textViewRegular14.copyWith(color: Colors.white),),
                ],
              ),
            ),
            SizedBox(height: 25.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.darkPrimary.withOpacity(0.4))
                    ),
                    child: Column(
                      children: [
                        TransportationInfo(),
                        Divider(),
                        SizedBox(height: 5.h,),
                        Row(
                          children: [
                            SizedBox(width: 10.w,),
                          RequestInfo(iconPath: money,infoCategory: AppStrings.shipmentPrice, infoText: "1300 EGP"),
                          Spacer(),
                          RequestInfo(iconPath: moneyCase,infoCategory: AppStrings.shipmentType, infoText: "0.004 EGP"),
                            Spacer(),
                        ],),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Text(AppStrings.clientInfo,style: TextStyles.textViewRegular15.copyWith(color: AppColors.sectionHeader),),
                  ClientInfo(),
                  SizedBox(height: 10.h,),
                  Text(AppStrings.requestInfo,style: TextStyles.textViewRegular15.copyWith(color: AppColors.sectionHeader),),
                  RequestContainer(
                      child: Row(
                        children: [
                          RequestInfo(iconPath: truck2, infoCategory: AppStrings.productType, infoText: AppStrings.product),
                          Spacer(),
                          RequestInfo(iconPath: weight, infoCategory: AppStrings.shipmentWeight, infoText: "50 Tons"),
                          Spacer(),
                        ],
                      )),
                  SizedBox(height: 16.h,),
                  RequestContainer(
                      child: Row(
                        children: [
                          RequestInfo(iconPath: calendar, infoCategory: AppStrings.shipmentDate, infoText: "2021/2/23"),
                          Spacer(),
                          RequestInfo(iconPath: clock, infoCategory: AppStrings.shipmentTime, infoText: "10:00 AM"),
                          Spacer(),
                        ],
                      )),
                  SizedBox(height: 16.h,),
                  RequestContainer(child: Column(
                    children: [
                      RequestInfo(iconPath: location, infoCategory: AppStrings.shipmentLocation, infoText: "القليوبية - مدينة العبور - مزارع عرابي - شارع 23 - مبنى 15"),
                      Divider(height: 20.h,),
                      RequestInfo(iconPath: location, infoCategory: AppStrings.deliveryLocation, infoText: "بنها - كفر السرايا - شارع 59 - مزرعة")
                    ],
                  )),
                  SizedBox(height: 16.h,),
                  RequestContainer(
                      child: Row(
                        children: [
                          RequestInfo(iconPath: money, infoCategory: AppStrings.shipmentPrice, infoText: "1300 EGP"),
                          Spacer(),
                          RequestInfo(infoCategory: AppStrings.phoneNumber, infoText: "+20 1163525388"),
                          Spacer(),
                        ],
                      )),
                  SizedBox(height: 100.h,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
