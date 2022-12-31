import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:terilla_contractor/core/utils/app_colors.dart';
import 'package:terilla_contractor/core/utils/app_strings.dart';
import 'package:terilla_contractor/core/utils/style_utils.dart';
import 'package:terilla_contractor/view/widgets/my_app_bar.dart';

import '../../../data/demo_data.dart';
import '../../widgets/circle_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context,title: AppStrings.profile),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 40.h,),
              CircleImage(
                imageUrl: DemoData.userData.image,
              ),
              SizedBox(height: 20.h,),
              Text(AppStrings.contractor,style: TextStyles.textViewMedium16.copyWith(color: Color.fromRGBO(166, 184, 204, 1)),),
              SizedBox(height: 10.h,),
              Text(DemoData.userData.name,style: TextStyles.textViewBold20.copyWith(color: AppColors.darkPrimary),),
              Align(alignment: Alignment.centerLeft,child:
              Text(AppStrings.information,style: TextStyles.textViewRegular15.copyWith(color: Color.fromRGBO(166, 184, 204, 1)),)
                ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStrings.userName,style: TextStyles.textViewRegular18.copyWith(color: AppColors.darkPrimary),),
                  Text(DemoData.userData.name, style: TextStyles.textViewRegular18.copyWith(color: Color.fromRGBO(166, 184, 204, 1)),)
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStrings.phoneNumber,style: TextStyles.textViewRegular18.copyWith(color: AppColors.darkPrimary),),
                  Text(DemoData.userData.phone, style: TextStyles.textViewRegular18.copyWith(color: Color.fromRGBO(166, 184, 204, 1)),)
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
