import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/icons_manager.dart';

class ImagePickerWidget extends StatelessWidget {
  final Function() onTap;
  final String text;
  const ImagePickerWidget({Key? key, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(border),
              Center(
                child: SvgPicture.asset(camera),
              ),
            ],
          ),
          SizedBox(height: 10.h,),
          Text(text),
        ],
      ),
    );
  }
}
