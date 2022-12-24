// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:terilla_customer/data/demo_data.dart';
// import 'package:terilla_customer/presintation/resources/app_colors.dart';
// import 'package:terilla_customer/presintation/resources/app_size.dart';
// import 'package:terilla_customer/presintation/resources/app_strings.dart';
// import 'package:terilla_customer/presintation/widgets/history_order_card.dart';
//
// class HistoryScreen extends StatefulWidget {
//   const HistoryScreen({super.key});
//
//   @override
//   State<HistoryScreen> createState() => _HistoryScreenState();
// }
//
// class _HistoryScreenState extends State<HistoryScreen> {
//   DateTimeRange? selectedDate;
//
//   void onClickFilter() async {
//     DateTimeRange? initSelectedDate = await showDateRangePicker(
//         context: context,
//         firstDate: DateTime(2021),
//         lastDate: DateTime.now(),
//         confirmText: "asdasd");
//     if (initSelectedDate != null) {
//       setState(() {
//         selectedDate = initSelectedDate;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: AppSize.s27),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: AppSize.s24),
//             InkWell(
//               onTap: onClickFilter,
//               child: Container(
//                 padding: EdgeInsets.all(AppSize.s10),
//                 decoration: BoxDecoration(
//                   border: Border.all(color: AppColors.primary),
//                   borderRadius: BorderRadius.circular(AppSize.s5),
//                 ),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(Icons.calendar_month_outlined),
//                     const SizedBox(width: AppSize.s10),
//                     Text(
//                       selectedDate == null
//                           ? AppStrings.FilterDate
//                           : '${DateFormat("EEE dd/MMM").format(selectedDate!.start)} - ${DateFormat("EEE dd/MMM").format(selectedDate!.end)}',
//                       style: const TextStyle(
//                         color: AppColors.darkColot,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: AppSize.s24),
//             ...DemoData.oldRequests.map((e) => HistoryOrderCard(order: e)),
//             const SizedBox(height: AppSize.s24),
//           ],
//         ),
//       ),
//     );
//   }
// }
