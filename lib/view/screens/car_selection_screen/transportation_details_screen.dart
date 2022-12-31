import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:terilla_contractor/core/utils/app_colors.dart';
import 'package:terilla_contractor/core/utils/assets_manager.dart';
import 'package:terilla_contractor/core/utils/icons_manager.dart';
import 'package:terilla_contractor/core/utils/style_utils.dart';
import 'package:terilla_contractor/data/models/order_state.dart';
import 'package:terilla_contractor/main.dart';
import 'package:terilla_contractor/view/components/client_info.dart';
import 'package:terilla_contractor/view/components/request_container.dart';
import 'package:terilla_contractor/view/components/request_info.dart';
import 'package:terilla_contractor/view/components/transportation_info.dart';
import 'package:terilla_contractor/view/widgets/my_app_bar.dart';

import '../../../config/routes/app_navigator.dart';
import '../../../core/utils/app_strings.dart';

class TransportationDetailScreen extends StatefulWidget {
  OrderState orderState;
  TransportationDetailScreen({Key? key, required this.orderState})
      : super(key: key);

  @override
  State<TransportationDetailScreen> createState() => _TransportationDetailScreenState();
}

class _TransportationDetailScreenState extends State<TransportationDetailScreen> {
  String getTransportationStatus(){
    if(widget.orderState == OrderState.pending){
      return AppStrings.transportationWillStartIn;
    }
    if(widget.orderState == OrderState.inProgress){
      return AppStrings.transportationWillArriveOn;
    }
    return AppStrings.transportationHasFinishedOn;
  }

  String getFloatingButtonText(){
    if(widget.orderState == OrderState.pending){
      return AppStrings.beginTransportation;
    }
    return AppStrings.endTransportation;
  }
  
  void showDeleteDialog(){
    showDialog(context: context, builder: (ctx) => Dialog(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20.h,),
            Text(AppStrings.doYouWantToDelete,style: TextStyles.textViewMedium18.copyWith(color: AppColors.darkPrimary),),
            SizedBox(height: 26.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(child: ElevatedButton(
                    onPressed: (){
                      //TODO: call api here
                      showDialog(context: context,
                          barrierDismissible: false,
                          builder: (ctx) => Dialog(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(success),
                              Text(AppStrings.transportationDeleted,style: TextStyles.textViewRegular14.copyWith(color: AppColors.darkPrimary),),
                            ],
                          ),
                        ),
                      ));
                      Future.delayed(const Duration(seconds: 2),(){
                        Navigator.of(context).pop();
                      });
                    },
                    child: Text(AppStrings.confirm,style: TextStyles.textViewSemiBold18.copyWith(),),
                    style: ElevatedButton.styleFrom(backgroundColor: AppColors.lightPrimary),
                  )),
                  SizedBox(width: 10.w,),
                  Expanded(child: ElevatedButton(
                    onPressed: (){
                     Navigator.of(context).pop();
                    },
                    child: Text(AppStrings.abort,style: TextStyles.textViewSemiBold18.copyWith(color: AppColors.darkPrimary),),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(side: BorderSide(color: AppColors.lightPrimary,),borderRadius: BorderRadius.circular(7)),
                        backgroundColor: Colors.white),
                  )),
                ],
              ),
            ),
            SizedBox(height: 25.h,),
          ],
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: widget.orderState == OrderState.completed ? null : Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              if(widget.orderState == OrderState.inProgress){
                widget.orderState = OrderState.completed;
              }
              if(widget.orderState == OrderState.pending){
                widget.orderState = OrderState.inProgress;
              }
            });
          },
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: AppColors.lightPrimary,
          ),
          child: Text(
            getFloatingButtonText(),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: MyAppBar(context, title: "763#", actions: [
        IconButton(
            onPressed: () {
              showDeleteDialog();
            },
            icon: Icon(Icons.delete_rounded))
      ]),
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
                    color: widget.orderState.getTextStyle().color,
                    child: Container(),
                  ),
                  SizedBox(
                    width: 17.w,
                  ),
                  SvgPicture.asset(widget.orderState.getIconURL()),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    getTransportationStatus(),
                    style: TextStyles.textViewRegular14
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppColors.darkPrimary.withOpacity(0.4))),
                    child: Column(
                      children: [
                        TransportationInfo(),
                        Divider(),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            RequestInfo(
                                iconPath: money,
                                infoCategory: AppStrings.shipmentPrice,
                                valueText: "1300 EGP"),
                            Spacer(),
                            RequestInfo(
                                iconPath: moneyCase,
                                infoCategory: AppStrings.shipmentType,
                                valueText: "0.004 EGP"),
                            Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    AppStrings.clientInfo,
                    style: TextStyles.textViewRegular15
                        .copyWith(color: AppColors.sectionHeader),
                  ),
                  ClientInfo(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    AppStrings.requestInfo,
                    style: TextStyles.textViewRegular15
                        .copyWith(color: AppColors.sectionHeader),
                  ),
                  RequestContainer(
                      child: Row(
                    children: [
                      RequestInfo(
                          iconPath: truck2,
                          infoCategory: AppStrings.productType,
                          valueText: AppStrings.product),
                      Spacer(),
                      RequestInfo(
                          iconPath: weight,
                          infoCategory: AppStrings.shipmentWeight,
                          valueText: "50 Tons"),
                      Spacer(),
                    ],
                  )),
                  SizedBox(
                    height: 16.h,
                  ),
                  RequestContainer(
                      child: Row(
                    children: [
                      RequestInfo(
                          iconPath: calendar,
                          infoCategory: AppStrings.shipmentDate,
                          valueText: "2021/2/23"),
                      Spacer(),
                      RequestInfo(
                          iconPath: clock,
                          infoCategory: AppStrings.shipmentTime,
                          valueText: "10:00 AM"),
                      Spacer(),
                    ],
                  )),
                  SizedBox(
                    height: 16.h,
                  ),
                  RequestContainer(
                      child: Column(
                    children: [
                      RequestInfo(
                          iconPath: location,
                          infoCategory: AppStrings.shipmentLocation,
                          valueText:
                              "القليوبية - مدينة العبور - مزارع عرابي - شارع 23 - مبنى 15"),
                      Divider(
                        height: 20.h,
                      ),
                      RequestInfo(
                          iconPath: location,
                          infoCategory: AppStrings.deliveryLocation,
                          valueText: "بنها - كفر السرايا - شارع 59 - مزرعة")
                    ],
                  )),
                  SizedBox(
                    height: 16.h,
                  ),
                  RequestContainer(
                      child: Row(
                    children: [
                      RequestInfo(
                          iconPath: money,
                          infoCategory: AppStrings.shipmentPrice,
                          valueText: "1300 EGP"),
                      Spacer(),
                      RequestInfo(
                          infoCategory: AppStrings.phoneNumber,
                          valueText: "+20 1163525388"),
                      Spacer(),
                    ],
                  )),
                  SizedBox(
                    height: 100.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
