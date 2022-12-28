import 'package:flutter/material.dart';
import 'package:terilla_contractor/core/utils/icons_manager.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/style_utils.dart';

enum OrderState {
  pending,
  completed,
  inProgress,
  all,
}

extension OrderStateExtention on OrderState {
  String getValue() {
    switch (this) {
      case OrderState.pending:
        return AppStrings.pending;

      case OrderState.completed:
        return AppStrings.completed;

      case OrderState.all:
        return AppStrings.all;

      case OrderState.inProgress:
        return AppStrings.inProgress;
    }
  }

  TextStyle getTextStyle() {
    switch (this) {
      case OrderState.pending:
        return TextStyles.textViewMedium12.copyWith(color: const Color.fromRGBO(224, 181, 71, 1));

      case OrderState.completed:
        return TextStyles.textViewMedium12.copyWith(color: Color.fromRGBO(140, 50, 50, 1));

      case OrderState.all:
        return TextStyles.textViewMedium12.copyWith();

      case OrderState.inProgress:
        return TextStyles.textViewMedium12.copyWith(color: Color.fromRGBO(25, 118, 210, 1));
    }
  }

  String getIconURL() {
    switch (this) {
      case OrderState.pending:
        return pendingDelivery;

      case OrderState.completed:
        return completedDelivery;

      case OrderState.all:
        return "";

      case OrderState.inProgress:
        return inProgressDelivery;
    }
  }

  // String getRequstIconURL() {
  //   switch (this) {
  //     case OrderState.Pending:
  //       return AppAssets.requestpending;
  //
  //     case OrderState.Compleated:
  //       return AppAssets.requestapproved;
  //
  //     case OrderState.Rejected:
  //       return AppAssets.rejectedNotifIcon;
  //
  //     case OrderState.Canceled:
  //       return AppAssets.sorryNotifIcon;
  //
  //     case OrderState.InProgress:
  //       return AppAssets.requestsendicon;
  //   }
  // }
}
