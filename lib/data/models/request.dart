// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../demo_data.dart';
import 'app_location.dart';
import 'driver.dart';
import 'journy_step.dart';
import 'order_state.dart';

class Request {
  int id;
  String productType = DemoData.productsType[0];
  int productWeight = 0;
  String weightType = "KG";
  String carType = DemoData.carTypes[0];
  DateTime pickUpDate = DateTime.now();
  TimeOfDay pickUpTime =
      TimeOfDay.fromDateTime(DateTime.now().add(const Duration(hours: 1)));
  TimeOfDay deliveryTime =
      TimeOfDay.fromDateTime(DateTime.now().add(const Duration(hours: 7)));
  Country? country;
  String phoneNumber = "011132153213";
  LocationInputType pickupLocationInputType = LocationInputType.newLocation;
  AppLocation pickUpLocation = AppLocation();
  LocationInputType deliveryLocationInputType = LocationInputType.newLocation;
  AppLocation deliveryLocation = AppLocation();
  int price = 1000;
  int depositPrice = 200;
  int offerPrice = 900;
  String notes = "";
  OrderState state;
  DateTime estimatedDeliveryDate = DateTime.now();
  Driver? driver;

  //TODO delete this steps
  List<JourneyStep> journeySteps = [
    JourneyStep(
      id: 0,
      message: "Request has been approved",
      dateTime: DateTime.now(),
      color: AppColors.approved,
      iconData: Icons.check,
    ),
    JourneyStep(
      id: 0,
      message: "Request has been accepted",
      dateTime: DateTime.now(),
      color: AppColors.red,
      iconData: Icons.car_rental_rounded,
    ),
    JourneyStep(
      id: 0,
      message: "Request has been deleted",
      dateTime: DateTime.now(),
      color: AppColors.blue,
      iconData: Icons.location_on_outlined,
    ),
  ];

  Request({
    required this.id,
    required this.state,
    this.driver,
  });
}
