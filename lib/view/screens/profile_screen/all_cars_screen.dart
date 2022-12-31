import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:terilla_contractor/config/routes/app_navigator.dart';
import 'package:terilla_contractor/core/utils/app_strings.dart';
import 'package:terilla_contractor/main.dart';
import 'package:terilla_contractor/view/screens/car_selection_screen/add_car_screen.dart';
import 'package:terilla_contractor/view/widgets/my_app_bar.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/assets_manager.dart';
import '../../../core/utils/style_utils.dart';

class AllCarsScreen extends StatelessWidget {
  const AllCarsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context,title: AppStrings.cars,actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
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
                            AppNavigator.push(context: context, screen: AddCarScreen());
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
