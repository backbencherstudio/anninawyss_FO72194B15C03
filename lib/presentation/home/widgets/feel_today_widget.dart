import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constansts/app_colors.dart';
import '../../../core/constansts/app_icons.dart';
import '../../../core/constansts/app_text_style.dart';
class FeelTodayWidget extends StatelessWidget {
  const FeelTodayWidget({
    required this.onTap,
    required this.icon,
    required this.label,
    super.key,
  });

  final VoidCallback onTap;
  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Padding(
        padding:  EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              icon,
              height: 30.r,
              width: 30.r,
              // You can also specify color if it's a monochrome icon and you want to tint it
            ),
            SizedBox(height: 8.h,),
            Text(label, style: AppTextStyles.nunitoS12W500C2F2A29,)
          ],
        ),
      ),
    );
  }
}
