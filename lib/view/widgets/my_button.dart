import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onClick;
  final String title;
  final bool disable;
  final double fontSize;
  final bool haveArrow;
  final double? width;
  const MyButton(
      {Key? key,
      required this.onClick,
      required this.title,
      this.disable = false,
      this.fontSize = 18,
      this.haveArrow = false,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      child: ElevatedButton(
        onPressed: disable ? null : onClick,
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: AppColors.data,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (haveArrow)
                const SizedBox(
                  width: 8,
                ),
              if (haveArrow)
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
