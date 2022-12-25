import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:terilla_contractor/core/utils/app_colors.dart';
import 'package:terilla_contractor/core/utils/app_strings.dart';
import 'package:terilla_contractor/core/utils/icons_manager.dart';
import 'package:terilla_contractor/view/widgets/image_picker_widget.dart';
import 'package:terilla_contractor/view/widgets/my_app_bar.dart';
import 'package:terilla_contractor/view/widgets/my_text_field.dart';

class AddCarScreen extends StatefulWidget {
  AddCarScreen({Key? key}) : super(key: key);

  @override
  State<AddCarScreen> createState() => _AddCarScreenState();
}

class _AddCarScreenState extends State<AddCarScreen> {
  String carModel = "";

  String carType = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context,
     title: AppStrings.addCar
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               ImagePickerWidget(onTap: (){},text: AppStrings.licenseImage,),
               ImagePickerWidget(onTap: (){},text: AppStrings.carImage,),
              ],
            ),
            SizedBox(height: 10.h,),
            MyTextField(hint: AppStrings.carModel, onChange: (_){}),
            SizedBox(height: 10.h,),
            MyTextField(hint: AppStrings.carType, onChange: (_){}),
            SizedBox(height: 10.h,),
            MyTextField(hint: AppStrings.weightPayload, onChange: (_){}),
            SizedBox(height: 10.h,),
            Container(
              width: double.maxFinite,
              child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.lightPrimary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ), child: Text(AppStrings.addCar),),
            )
          ],
        ),
      ),
    );
  }
}
