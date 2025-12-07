import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constansts/app_text_style.dart';
class CustomContentButton extends StatelessWidget {
  const CustomContentButton({
    required this.text,
    required this.onTap,
    super.key,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: Color(0Xff627B99),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Text(
          text,
          style: AppTextStyles.nunitoS16BoldC2F2A29.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
