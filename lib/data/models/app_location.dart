// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:location/location.dart';

enum LocationInputType {
  newLocation,
  currentLocation,
  chooseLocation,
}

class AppLocation {
  String? streetName;
  String? buildingNumber;
  String? cityAndArea;
  String? district;
  String? governorate;
  String? nearestLandark;

  LocationData? locationData;

  AppLocation({
    this.streetName,
    this.buildingNumber,
    this.cityAndArea,
    this.district,
    this.governorate,
    this.nearestLandark,
    this.locationData,
  });

  bool isCompleted() {
    //TODO but other validation
    return true;
  }

  @override
  String toString() {
    return '${governorate}, ${cityAndArea}, ${streetName}, ${buildingNumber}';
  }
}
