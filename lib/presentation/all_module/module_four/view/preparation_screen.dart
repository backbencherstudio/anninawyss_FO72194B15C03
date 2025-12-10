import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_text_style.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/custom_button.dart';

class PreparationScreen extends StatefulWidget {
  const PreparationScreen({super.key});

  @override
  State<PreparationScreen> createState() => _PreparationScreenState();
}

class _PreparationScreenState extends State<PreparationScreen> {
  @override
  Widget build(BuildContext context) {
    bool option1 = false;
    bool option2 = false;
    bool option3 = false;

    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: AppColors.whiteBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h),

            Text(
              "Preparation",
              style: AppTextStyles.nunitoS18BoldC2F2A29,
            ),

            SizedBox(height: 8.h),

            Text(
              "Plan ahead, gather necessary resources, and create a calm, safe environment before taking action.",
              style: AppTextStyles.interS16RegularC6B7280,
            ),

            SizedBox(height: 16.h),

// --------- Checkbox Options ----------
            Row(
              children: [
                Checkbox(
                  activeColor: Color(0Xff6B7280),
                  value: true,      // change with state
                  onChanged: (value) {},
                ),
                Text(
                  "Stay Calm",
                  style: AppTextStyles.interS16RegularC6B7280,
                ),
              ],
            ),

            Row(
              children: [
                Checkbox(
                  value: option2,
                  onChanged: (value) {},
                ),
                Text(
                  "Gather Tools",
                  style: AppTextStyles.interS16RegularC6B7280,
                ),
              ],
            ),

            Row(
              children: [
                Checkbox(
                  value: option1,
                  onChanged: (value) {},
                ),
                Text(
                  "Take Action",
                  style: AppTextStyles.interS16RegularC6B7280,
                ),
              ],
            ),

            SizedBox(height: 18.h,),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  width: 140.w,
                  child: CustomButton(buttonText: "Save", onTap: (){})),
            ),
            SizedBox(height: 18.h,),
          ],
        ),
      ),
    );
  }
}
