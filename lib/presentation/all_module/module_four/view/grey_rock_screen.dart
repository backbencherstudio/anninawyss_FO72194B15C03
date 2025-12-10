import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_strings.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_text_style.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreyRockScreen extends StatelessWidget {
  const GreyRockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            Text("The Grey Rock Method", style: AppTextStyles.nunitoS18BoldC2F2A29,),
            SizedBox(height: 12.h,),
            Text("The **Grey Rock Method** is a strategy to make yourself as uninteresting as a grey rock to a narcissist. By providing minimal, factual, and unemotional responses, you starve them of the dramatic reactions they crave. This reduces their desire to interact with you, making it easier to disengage.", style: AppTextStyles.interS16RegularC6B7280,)
          ],
        ),
      ),
    );
  }
}
