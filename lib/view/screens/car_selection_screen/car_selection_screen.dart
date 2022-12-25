import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:terilla_contractor/config/routes/app_navigator.dart';
import 'package:terilla_contractor/core/utils/app_colors.dart';
import 'package:terilla_contractor/core/utils/app_strings.dart';
import 'package:terilla_contractor/core/utils/assets_manager.dart';
import 'package:terilla_contractor/core/utils/style_utils.dart';
import 'package:terilla_contractor/view/screens/car_selection_screen/add_car_screen.dart';
import 'package:terilla_contractor/view/screens/car_selection_screen/transportation_details_screen.dart';
import 'package:terilla_contractor/view/widgets/my_app_bar.dart';

class CarSelectionScreen extends StatefulWidget {
  CarSelectionScreen({Key? key}) : super(key: key);

  @override
  State<CarSelectionScreen> createState() => _CarSelectionScreenState();
}

class _CarSelectionScreenState extends State<CarSelectionScreen> {
  int? selectedCarIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: selectedCarIndex != null ? Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => AppNavigator.push(context: context, screen: TransportationDetailScreen()),
          child: Text(AppStrings.confirm,),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: AppColors.lightPrimary,
          ),
        ),
      ) : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: MyAppBar(context, title: AppStrings.cars, actions: [
        GestureDetector(
          onTap: () {
            AppNavigator.push(context: context, screen: AddCarScreen());
          },
          child: Container(
            width: 32.w,
            // height: 10.h,
            margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.h),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(5),
              shape: BoxShape.rectangle
            ),
            child: Icon(Icons.add,color: AppColors.lightPrimary,),
          ),
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h,),
            Text(
              AppStrings.pickACar,
              style: TextStyles.textViewSemiBold14
                  .copyWith(color: AppColors.darkPrimary.withOpacity(0.5)),
            ),
            Expanded(
                child: ListView(
              children: List.generate(
                  10,
                  (index) => GestureDetector(
                      onTap: (){
                        setState((){
                        selectedCarIndex = index;
                        });
                      },
                      child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                          decoration: BoxDecoration(
                            color: selectedCarIndex == index ? AppColors.selectedContainer : Color.fromRGBO(251, 251, 251, 1),
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
