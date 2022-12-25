import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/assets_manager.dart';
import '../../core/utils/style_utils.dart';

class TransportationInfo extends StatelessWidget {
  const TransportationInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
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
    );
  }
}
