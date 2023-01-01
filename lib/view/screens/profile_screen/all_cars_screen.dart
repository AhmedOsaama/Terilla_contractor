import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:terilla_contractor/config/routes/app_navigator.dart';
import 'package:terilla_contractor/core/utils/app_strings.dart';
import 'package:terilla_contractor/main.dart';
import 'package:terilla_contractor/view/screens/car_selection_screen/add_car_screen.dart';
import 'package:terilla_contractor/view/screens/car_selection_screen/car_detail_screen.dart';
import 'package:terilla_contractor/view/widgets/my_app_bar.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/icons_manager.dart';
import '../../../core/utils/style_utils.dart';

class AllCarsScreen extends StatelessWidget {
  const AllCarsScreen({Key? key}) : super(key: key);

  void showOptionsBottomSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (ctx) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 10.h,),
        Container(
          width: 134.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50)
            ),
            child: Divider(thickness: 5,color: Colors.black,),
        ),
        SizedBox(height: 20.h,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () => showAddDriverDialog(context),
            child: Row(
              children: [
                Icon(Icons.add,color: AppColors.lightPrimary,),
                SizedBox(width: 15.w,),
                Text(AppStrings.addDriver,style: TextStyles.textViewMedium13,),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h,),
      ],
    ));
  }

  void showAddDriverDialog(BuildContext context){
    showDialog(context: context, builder: (ctx) => Dialog(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10.h,),
            Text(AppStrings.enterNameOfDriver,style: TextStyles.textViewRegular16.copyWith(color: AppColors.darkPrimary),),
            SizedBox(height: 10.h,),
            TextField(
              decoration: InputDecoration(
                hintText: "Driver Name",
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                Expanded(child: ElevatedButton(
                  onPressed: (){
                    //TODO: call api here
                    AppNavigator.pop(context: context);
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
                                Text(AppStrings.driverRequestSentSuccessfully,style: TextStyles.textViewRegular14.copyWith(color: AppColors.darkPrimary),),
                              ],
                            ),
                          ),
                        ));
                    Future.delayed(const Duration(seconds: 2),(){
                      Navigator.of(context).pop();
                    });
                  },
                  child: Text(AppStrings.sendRequest,style: TextStyles.textViewSemiBold18.copyWith(),),
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
            SizedBox(height: 20.h,)
          ],
        ),
      ),
    ));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context,title: AppStrings.cars,actions: [
        IconButton(onPressed: () => showOptionsBottomSheet(context), icon: Icon(Icons.more_vert)),
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            Container(
              height: 60,
              color: Color.fromRGBO(252, 252, 252, 1),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search a car",   //TODO: localize this
                  isDense: true
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            Expanded(
                child: ListView(
                  children: List.generate(
                      10,
                          (index) => GestureDetector(
                        onTap: (){
                            AppNavigator.push(context: context, screen: CarDetailScreen());
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                          margin: EdgeInsets.symmetric(vertical: 10.h),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 251, 251, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Image.asset(carImage),
                              SizedBox(width: 20.w,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppStrings.carName,
                                    style: TextStyles.textViewMedium16
                                        .copyWith(color: AppColors.darkPrimary),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: "${AppStrings.weight}: ",
                                        style: TextStyles.textViewRegular14
                                            .copyWith(
                                            color: AppColors.darkPrimaryHalf),
                                        children: [
                                          TextSpan(
                                              text: "25 Tons",
                                              style: TextStyles.textViewMedium14
                                                  .copyWith(
                                                  color: AppColors
                                                      .darkPrimary))
                                        ]),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
