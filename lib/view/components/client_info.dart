import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/assets_manager.dart';
import '../../core/utils/icons_manager.dart';
import '../../core/utils/style_utils.dart';

class ClientInfo extends StatelessWidget {
  const ClientInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 14),
      decoration: BoxDecoration(
        color: Color.fromRGBO(247, 247, 247, 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Image.asset(personImage),
          SizedBox(width: 10.w,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("كريم حسن المهدي",style: TextStyles.textViewMedium16.copyWith(color: AppColors.darkPrimary),),
              SizedBox(height: 7.h,),
              Text.rich(
                TextSpan(
                    text: "${AppStrings.numberOfRequests}: ",
                    style: TextStyles.textViewRegular14
                        .copyWith(
                        color: AppColors.darkPrimaryHalf),
                    children: [
                      TextSpan(
                          text: "16",
                          style: TextStyles.textViewMedium14
                              .copyWith(
                              color: AppColors
                                  .darkPrimary))
                    ]),
              )
            ],
          ),
          Spacer(),
          IconButton(onPressed: (){}, icon: SvgPicture.asset(call))
        ],
      ),
    );
  }
}
