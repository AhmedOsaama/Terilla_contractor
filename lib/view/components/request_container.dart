import 'package:flutter/material.dart';
class RequestContainer extends StatelessWidget {
    final Widget child;
  const RequestContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color.fromRGBO(234, 234, 234, 1))),
      child: child,
    );
  }
}
