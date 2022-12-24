// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:terilla_contractor/data/models/user.dart';
import 'package:terilla_contractor/data/models/vehicle.dart';

class Driver {
  int id;
  User user;
  Vehicle vehicle;
  Driver({
    required this.id,
    required this.user,
    required this.vehicle,
  });
}
