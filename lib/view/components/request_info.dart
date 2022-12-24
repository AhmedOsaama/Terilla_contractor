import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/icons_manager.dart';
import '../../core/utils/style_utils.dart';

class RequestInfo extends StatelessWidget {
  final String? iconPath;
  final String infoCategory;
  final String infoText;

  const RequestInfo({Key? key, this.iconPath, required this.infoCategory, required this.infoText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
       return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(iconPath != null)...[
              SvgPicture.asset(iconPath!),
            ],
            SizedBox(width: 5.w,),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(infoCategory,style: TextStyles.textViewSemiBold14.copyWith(
                    color: AppColors.darkPrimary.withOpacity(0.38)
                ),),
                SizedBox(width: 15.w,),
        Text(infoText,style: TextStyles.textViewMedium14.copyWith(color: AppColors.darkPrimary),),
              ],
            )
          ],
        );
  }
}
