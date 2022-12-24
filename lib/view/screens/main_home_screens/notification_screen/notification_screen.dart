import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:terilla_contractor/core/utils/app_colors.dart';
import 'package:terilla_contractor/core/utils/app_strings.dart';
import 'package:terilla_contractor/core/utils/style_utils.dart';

import '../../../../core/utils/icons_manager.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.close,size: 20,color: Color.fromRGBO(143, 143, 143, 1),),splashRadius: 20,),
                Row(
                  children: [
                    SvgPicture.asset(notificationTruck),
                    SizedBox(width: 30.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppStrings.requestNumber,style: TextStyles.textViewBold17.copyWith(color: Color.fromRGBO(143, 143, 143, 1)),),
                        SizedBox(height: 10.h,),
                        Text("You have a new request",style: TextStyles.textViewRegular16.copyWith(color: AppColors.darkPrimary),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.h,),
                Text("4/2/2022",style: TextStyles.textViewRegular14.copyWith(color: Color.fromRGBO(143, 143, 143, 1)),),
              // Divider(indent: 0,),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.close,size: 20,color: Color.fromRGBO(143, 143, 143, 1),),splashRadius: 20,),
                Row(
                  children: [
                    SvgPicture.asset(canceled),
                    SizedBox(width: 30.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppStrings.requestNumber,style: TextStyles.textViewBold17.copyWith(color: Color.fromRGBO(143, 143, 143, 1)),),
                        SizedBox(height: 10.h,),
                        Text("This order has been canceled",style: TextStyles.textViewRegular16.copyWith(color: AppColors.darkPrimary),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.h,),
                Text("4/2/2022",style: TextStyles.textViewRegular14.copyWith(color: Color.fromRGBO(143, 143, 143, 1)),),
              // Divider(indent: 0,),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.close,size: 20,color: Color.fromRGBO(143, 143, 143, 1),),splashRadius: 20,),
                Row(
                  children: [
                    SvgPicture.asset(success),
                    SizedBox(width: 30.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppStrings.requestNumber,style: TextStyles.textViewBold17.copyWith(color: Color.fromRGBO(143, 143, 143, 1)),),
                        SizedBox(height: 10.h,),
                        Text("Shipment is successful",style: TextStyles.textViewRegular16.copyWith(color: AppColors.darkPrimary),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.h,),
                Text("4/2/2022",style: TextStyles.textViewRegular14.copyWith(color: Color.fromRGBO(143, 143, 143, 1)),),
              // Divider(indent: 0,),
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.close,size: 20,color: Color.fromRGBO(143, 143, 143, 1),),splashRadius: 20,),
                Row(
                  children: [
                    SvgPicture.asset(notificationTruck2),
                    SizedBox(width: 30.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppStrings.requestNumber,style: TextStyles.textViewBold17.copyWith(color: Color.fromRGBO(143, 143, 143, 1)),),
                        SizedBox(height: 10.h,),
                        Text("A Mercedes-2022 car has been added",style: TextStyles.textViewRegular16.copyWith(color: AppColors.darkPrimary),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.h,),
                Text("4/2/2022",style: TextStyles.textViewRegular14.copyWith(color: Color.fromRGBO(143, 143, 143, 1)),),
              // Divider(indent: 0,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
