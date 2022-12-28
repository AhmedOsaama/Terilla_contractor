import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../data/models/order_state.dart';

class OrdersTabBar extends StatelessWidget {
  OrderState orderState;
  Function(OrderState) onClick;
  bool isSelected;
  OrdersTabBar({
    Key? key,
    required this.orderState,
    required this.onClick,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            onClick(orderState);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.lightPrimary : AppColors.card,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              orderState.getValue(),
              style: TextStyle(
                color: isSelected ? Colors.white : AppColors.body,
                fontSize: 15,
              ),
            ),
          ),
        ),
        const SizedBox(width: 6),
      ],
    );
  }
}
