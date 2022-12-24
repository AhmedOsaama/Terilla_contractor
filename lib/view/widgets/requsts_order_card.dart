// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:terilla_contractor/core/extensions.dart';
import 'package:terilla_contractor/data/models/order_state.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';
import '../../data/models/request.dart';

class RequstsOrderCard extends StatelessWidget {
  final Request request;
  const RequstsOrderCard({
    Key? key,
    required this.request,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, AppRoutes.requestDetails,
        //     arguments: request);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 38, vertical: 16),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColors.border),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              request.state.getIconURL(),
              width:50,
            ),
            const SizedBox(width:18),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  request.state.getValue(),
                  style: const TextStyle(
                    color: AppColors.darkColot,
                    fontWeight: FontWeight.w600,
                    fontSize:16,
                  ),
                ),
                const SizedBox(height:4),
                Text(
                  request.pickUpDate.day == DateTime.now().day
                      ? AppStrings.Today
                      : request.pickUpDate.format("EEE dd/MMM"),
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize:14,
                  ),
                ),
                const SizedBox(height:4),
                Text(
                  request.pickUpDate.format("hh:mm a"),
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize:14,
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
