import 'package:flutter/material.dart';

import '../../core/utils/app_assets.dart';

AppBar MyAppBar(
  BuildContext context, {
  String? title,
  VoidCallback? onClickBack,
  Widget? leading,
  List<Widget>? actions,
}) =>
    AppBar(
      title: title != null
          ? Text(title)
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  AppAssets.terillaLogo,
                  width: 40,
                ),
                Image.asset(
                  AppAssets.terillaName,
                  width: 70,
                ),
              ],
            ),
      actions: actions,
      leading: leading,
    );
