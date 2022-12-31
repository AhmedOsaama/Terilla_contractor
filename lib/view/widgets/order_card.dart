// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:terilla_contractor/config/routes/app_navigator.dart';
import 'package:terilla_contractor/core/extensions.dart';
import 'package:terilla_contractor/core/utils/assets_manager.dart';
import 'package:terilla_contractor/core/utils/icons_manager.dart';
import 'package:terilla_contractor/core/utils/style_utils.dart';
import 'package:terilla_contractor/data/models/order_state.dart';
import 'package:terilla_contractor/view/components/client_info.dart';
import 'package:terilla_contractor/view/components/request_container.dart';
import 'package:terilla_contractor/view/components/request_info.dart';
import 'package:terilla_contractor/view/screens/car_selection_screen/transportation_details_screen.dart';
import 'package:terilla_contractor/view/widgets/request_widget.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';
import '../../data/models/request.dart';

class OrderCard extends StatelessWidget {
  final Order order;
  const OrderCard({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            offset: Offset(0,2),
            color: Color.fromRGBO(0, 0, 0, 0.05)
          )
        ]
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RequestWidget(children: [
        RequestContainer(child: Row(
          children: [
            RequestInfo(iconPath: truck2,infoCategory: AppStrings.productType, valueText: "Frozen Potatoes"),
            Spacer(),
            RequestInfo(iconPath: weight,infoCategory: AppStrings.weightPayload, valueText: "50 tons"),
            Spacer(),
          ],
        )),
        SizedBox(height: 10.h,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(AppStrings.clientInfo),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ClientInfo(),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(order.state.getIconURL()),
                  SizedBox(width: 5.w,),
                  Text(order.state.getValue(),style: order.state.getTextStyle(),)
                ],
              ),
              GestureDetector(
                onTap: (){
                  AppNavigator.push(context: context, screen: TransportationDetailScreen(orderState: order.state,));
                },
                child: Row(
                  children: [
                    Text(AppStrings.more,style: TextStyles.textViewSemiBold14.copyWith(color: AppColors.lightPrimary),),
                    SizedBox(width: 10.w,),
                    Icon(Icons.arrow_forward,color: AppColors.lightPrimary,)
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h,)
      ]),
    );
  }
}
