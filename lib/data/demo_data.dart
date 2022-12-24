

import 'models/driver.dart';
import 'models/notification.dart';
import 'models/notification_type.dart';
import 'models/order_state.dart';
import 'models/request.dart';
import 'models/user.dart';
import 'models/vehicle.dart';

class DemoData {
  static User userData = User(
      id: 0,
      name: "Ahmed Magdy",
      image:
          "https://caricom.org/wp-content/uploads/Floyd-Morris-Remake-1024x879-1.jpg",
      rank: "Gold Member",
      phone: "0122158746",
      email: "ahmedmagdy@gmail.com",
      rate: 7.6,
      totalRequests: 32,
      totalShipments: 26);

  static List<Request> oldRequests = [
    Request(
      id: 0,
      state: OrderState.Compleated,
      driver: Driver(
          id: 0,
          user: User(
              id: 0,
              name: "Ahmed Magdy",
              image:
                  "https://caricom.org/wp-content/uploads/Floyd-Morris-Remake-1024x879-1.jpg",
              rank: "Gold Member",
              phone: "0122158746",
              email: "ahmedmagdy@gmail.com",
              rate: 3.5,
              totalRequests: 32,
              totalShipments: 26),
          vehicle: Vehicle(
              id: 0, model: "Mercedes - Actros - White ", number: "BWG - 172")),
    ),
    Request(
      id: 1,
      state: OrderState.Compleated,
    ),
    Request(
      id: 2,
      state: OrderState.Pending,
    ),
    Request(
      id: 3,
      state: OrderState.Rejected,
    ),
    Request(
      id: 4,
      state: OrderState.InProgress,
    ),
    Request(
      id: 5,
      state: OrderState.Canceled,
    ),
  ];

  static List<AppNotification> notifications = [
    AppNotification(
      id: 0,
      message: "Take a minute to rate the driver",
      order: oldRequests[0],
      notificationType: NotificationType.approved,
    ),
    AppNotification(
      id: 0,
      message: "Request has been approved",
      order: oldRequests[3],
      notificationType: NotificationType.rejected,
    ),
    AppNotification(
      id: 0,
      message: "Take a minute to rate the driver",
      order: oldRequests[5],
      notificationType: NotificationType.rateDriver,
    ),
    AppNotification(
      id: 0,
      message: "Take a minute to rate the driver",
      order: oldRequests[5],
      notificationType: NotificationType.wrong,
    ),
  ];

  static List<String> productsType = [
    "cars",
    "vigtables",
    "bags",
  ];

  static List<String> weightTypes = [
    "Gram",
    "KG",
    "tons",
  ];

  static List<String> carTypes = [
    "Truck",
    "MG Car",
    "Shefolate",
  ];

  // static List<AppLocation> addreses = [
  //   AppLocation(streetName: "1s elhashemy"),
  //   AppLocation(streetName: "2s banana farm"),
  //   AppLocation(streetName: "4s salah eldin"),
  //   AppLocation(streetName: "23s elhashemy"),
  // ];
}
