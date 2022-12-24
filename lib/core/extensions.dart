import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String format(String formatePattern) {
    return DateFormat(formatePattern).format(this);
  }
}

