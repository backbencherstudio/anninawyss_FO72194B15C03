import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constansts/app_colors.dart';
import '../view_model/analytics_item_model.dart';

class CustomAnalyticsTile extends StatelessWidget {
  final AnalyticsItemModel item;

  const CustomAnalyticsTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
     // padding: EdgeInsets.all(16.r),
      margin: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: const Color(0Xff627B99),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        iconColor: Colors.red,
        collapsedIconColor: Colors.white,
        title: Text(
          item.title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.whiteBackgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              item.content,
              style: const TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
