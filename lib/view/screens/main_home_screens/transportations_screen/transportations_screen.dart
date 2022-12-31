import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/demo_data.dart';
import '../../../../data/models/order_state.dart';
import '../../../widgets/orders_tab_bar.dart';
import '../../../widgets/order_card.dart';

class TransportationsScreen extends StatefulWidget {
  const TransportationsScreen({super.key});

  @override
  State<TransportationsScreen> createState() => _TransportationsScreenState();
}

class _TransportationsScreenState extends State<TransportationsScreen> {
  OrderState selectedState = OrderState.completed;

  void onSelectOrderState(OrderState orderState) {
    setState(() {
      selectedState = orderState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 24),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 28),
                ...OrderState.values.map(
                  (e) => OrdersTabBar(
                    orderState: e,
                    onClick: onSelectOrderState,
                    isSelected: e == selectedState,
                  ),
                ),
                const SizedBox(width: 22),
              ],
            ),
          ),
          const SizedBox(height: 20),
         if (selectedState != OrderState.all) ...DemoData.allOrders
              .where((element) => element.state == selectedState)
              .map((e) => OrderCard(order: e)),
          if (selectedState == OrderState.all) ...DemoData.allOrders
              .map((e) => OrderCard(order: e)),
        ],
      ),
    );
  }
}
