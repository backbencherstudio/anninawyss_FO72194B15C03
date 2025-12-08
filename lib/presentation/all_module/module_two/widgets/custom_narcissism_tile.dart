import 'package:anninawyss_o72194b15c03/core/constansts/app_text_style.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_two/view_model/narcissism_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constansts/app_colors.dart';


class CustomNarcissismTileTile extends StatelessWidget {
  final NarcissismItemModel item;

  const CustomNarcissismTileTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.r),
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        color:  Color(0Xff627B99),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
        title: Text(
          item.title,
          style: AppTextStyles.nunitoS18BoldC2F2A29.copyWith(color: Colors.white),
        ),
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.whiteBackgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
           child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: item.content
                  .split('\n')
                  .map((line) => line.trim())
                  .where((line) => line.isNotEmpty)
                  .map((text) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // If line starts with => show bullet
                    Text(text.startsWith('=>') ? '•  ' : ''),
                    Expanded(
                      child: Text(
                        text.replaceFirst('=>', '').trim(),
                        style: AppTextStyles.interS16RegularC6B7280,
                      ),
                    ),
                  ],
                ),
              ))
                  .toList(),
            ),

          )
        ],
      ),
    );
  }
}
