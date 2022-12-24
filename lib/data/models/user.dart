// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  int id;
  String name;
  String image;
  String rank;
  String phone;
  String email;
  double rate;
  int totalRequests;
  int totalShipments;
  User({
    required this.id,
    required this.name,
    required this.image,
    required this.rank,
    required this.phone,
    required this.email,
    required this.rate,
    required this.totalRequests,
    required this.totalShipments,
  });
}
