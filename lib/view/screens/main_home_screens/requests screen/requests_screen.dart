// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../data/demo_data.dart';
import '../../../../data/models/order_state.dart';
import '../../../widgets/requests_tap.dart';
import '../../../widgets/requsts_order_card.dart';

class RequestsScreen extends StatefulWidget {
  const RequestsScreen({super.key});

  @override
  State<RequestsScreen> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  OrderState SelectedState = OrderState.Compleated;

  void onSelectOrderState(OrderState orderState) {
    setState(() {
      SelectedState = orderState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 28),
              ...OrderState.values.map(
                (e) => RequstsTap(
                  orderState: e,
                  onClick: onSelectOrderState,
                  isSelected: e == SelectedState,
                ),
              ),
              const SizedBox(width: 22),
            ],
          ),
        ),
        const SizedBox(height: 35),
        ...DemoData.oldRequests
            .where((element) => element.state == SelectedState)
            .map((e) => RequstsOrderCard(request: e)),
      ],
    );
  }
}
