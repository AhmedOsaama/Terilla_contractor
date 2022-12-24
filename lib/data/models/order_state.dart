import 'package:flutter/material.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';

enum OrderState {
  Pending,
  Compleated,
  InProgress,
  Canceled,
  Rejected,
}

extension OrderStateExtention on OrderState {
  String getValue() {
    switch (this) {
      case OrderState.Pending:
        return AppStrings.Pending;

      case OrderState.Compleated:
        return AppStrings.Completed;

      case OrderState.Rejected:
        return AppStrings.Rejected;

      case OrderState.Canceled:
        return AppStrings.Canceled;

      case OrderState.InProgress:
        return AppStrings.Inprogress;
    }
  }

  Color getColor() {
    switch (this) {
      case OrderState.Pending:
        return AppColors.primary;

      case OrderState.Compleated:
        return AppColors.approved;

      case OrderState.Rejected:
        return AppColors.red;

      case OrderState.Canceled:
        return Colors.red;

      case OrderState.InProgress:
        return AppColors.inProgress;
    }
  }

  String getIconURL() {
    switch (this) {
      case OrderState.Pending:
        return AppAssets.pending;

      case OrderState.Compleated:
        return AppAssets.completed;

      case OrderState.Rejected:
        return AppAssets.cancelled;

      case OrderState.Canceled:
        return AppAssets.cancelled;

      case OrderState.InProgress:
        return AppAssets.inprogress;
    }
  }

  String getRequstIconURL() {
    switch (this) {
      case OrderState.Pending:
        return AppAssets.requestpending;

      case OrderState.Compleated:
        return AppAssets.requestapproved;

      case OrderState.Rejected:
        return AppAssets.rejectedNotifIcon;

      case OrderState.Canceled:
        return AppAssets.sorryNotifIcon;

      case OrderState.InProgress:
        return AppAssets.requestsendicon;
    }
  }
}
