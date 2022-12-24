
import '../../core/utils/app_assets.dart';

enum NotificationType {
  approved,
  rejected,
  wrong,
  rateDriver,
}

extension NotificationTypeExt on NotificationType {
  String getIcon() {
    switch (this) {
      case NotificationType.approved:
        return AppAssets.approvedNotifIcon;
      case NotificationType.rejected:
        return AppAssets.rejectedNotifIcon;
      case NotificationType.wrong:
        return AppAssets.sorryNotifIcon;
      case NotificationType.rateDriver:
        return AppAssets.rateNotifIcon;
    }
  }
}
