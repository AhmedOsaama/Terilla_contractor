import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:terilla_contractor/core/utils/app_strings.dart';
import 'package:terilla_contractor/core/utils/style_utils.dart';
import 'package:terilla_contractor/view/widgets/my_app_bar.dart';

import '../../../core/utils/app_colors.dart';
import '../../../data/demo_data.dart';

class CarDetailScreen extends StatelessWidget {
  const CarDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context,title: "Mercedes Actros"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network("https://mediaaws.almasryalyoum.com/news/large/2022/09/26/1902379_0.jpg",width: 107.w,height: 90.h,)),
                    SizedBox(height: 10.h,),
                    Text(AppStrings.licenseImage,style: TextStyles.textViewRegular16,),
                  ],
                ),
                SizedBox(width: 31.w,),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                        child: Image.network("https://www.scania.com/content/www/uk/en/home/about-scania/newsroom/news/2021/scania-launches-three-axle-lng-tractor-unit/_jcr_content/root/responsivegrid/responsivegrid_1557944190/heroimage.coreimg.85.1200.jpeg/1634214467804.jpeg",width: 107.w,height: 90.h,)),
                    SizedBox(height: 10.h,),
                    Text(AppStrings.carImage,style: TextStyles.textViewRegular16,),
                  ],
                ),
              ],
            ),
            SizedBox(height: 34.h,),
            Text("Car Information", style: TextStyles.textViewRegular15
                .copyWith(color: Color.fromRGBO(166, 184, 204, 1)),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.carModel,style: TextStyles.textViewRegular18.copyWith(color: AppColors.darkPrimary),),
                Text(DemoData.carTypes.first, style: TextStyles.textViewRegular18.copyWith(color: Color.fromRGBO(166, 184, 204, 1)),)
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.carType,style: TextStyles.textViewRegular18.copyWith(color: AppColors.darkPrimary),),
                Text(DemoData.userData.phone, style: TextStyles.textViewRegular18.copyWith(color: Color.fromRGBO(166, 184, 204, 1)),)
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.weightPayload,style: TextStyles.textViewRegular18.copyWith(color: AppColors.darkPrimary),),
                Text(DemoData.userData.phone, style: TextStyles.textViewRegular18.copyWith(color: Color.fromRGBO(166, 184, 204, 1)),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
