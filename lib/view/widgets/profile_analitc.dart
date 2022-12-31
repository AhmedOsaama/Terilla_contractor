// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/utils/app_colors.dart';

class ProfileAnalytics extends StatelessWidget {
  final String iconUrl;
  final String value;
  final String name;
  const ProfileAnalytics({
    Key? key,
    required this.iconUrl,
    required this.value,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          iconUrl,
          height: 35,
          width: 35,
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          name,
          style: const TextStyle(
            fontSize: 12,
            color: AppColors.darkPrimary,
          ),
        )
      ],
    );
  }
}
