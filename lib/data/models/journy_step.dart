// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

class JourneyStep {
  int id;
  String message;
  DateTime dateTime;
  Color color;
  IconData iconData;
  JourneyStep({
    required this.id,
    required this.message,
    required this.dateTime,
    required this.color,
    required this.iconData,
  });
}
