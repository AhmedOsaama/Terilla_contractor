import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/style_utils.dart';

class RequestWidget extends StatelessWidget {
  final List<Widget> children;
  const RequestWidget({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50.h,
            clipBehavior: Clip.hardEdge,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
                color: AppColors.darkPrimary,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.requestDate,style: TextStyles.textViewSemiBold14.copyWith(color: Colors.white),),
                Text(AppStrings.requestNumber,style: TextStyles.textViewSemiBold18.copyWith(color: Colors.white),)
              ],
            ),
          ),
          SizedBox(height: 16.h,),
         ...children
        ],
      ),
    );
  }
}
