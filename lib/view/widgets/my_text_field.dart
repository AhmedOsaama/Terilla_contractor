// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_colors.dart';

class MyTextField extends StatelessWidget {
  String? lable;
  String hint;
  Function(String) onChange;
  TextInputType? keyboardType;
  bool obscureText;
  TextEditingController? controller;
  Widget? prefix;
  Widget? suffixIcon;
  String? initialValue;
  MyTextField({
    Key? key,
    this.lable,
    required this.hint,
    required this.onChange,
    this.keyboardType,
    this.obscureText = false,
    this.controller,
    this.prefix,
    this.suffixIcon,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (lable != null) ...[
          Text(
            lable!,
            style: const TextStyle(
              color: AppColors.head,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 14),
        ],
        SizedBox(
          height: 55.h,
          child: TextFormField(
            onChanged: onChange,
            controller: controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(12),
              hintText: hint,
              prefixIcon: prefix,
              suffixIcon: suffixIcon,
            ),
            obscureText: obscureText,
            keyboardType: keyboardType,
            initialValue: initialValue,
          ),
        ),
      ],
    );
  }
}
