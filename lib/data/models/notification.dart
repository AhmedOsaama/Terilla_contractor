// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:terilla_contractor/data/models/request.dart';

import 'notification_type.dart';

class AppNotification {
  int id;
  String message;
  Order order;
  NotificationType notificationType;
  AppNotification({
    required this.id,
    required this.message,
    required this.order,
    required this.notificationType,
  });
}
