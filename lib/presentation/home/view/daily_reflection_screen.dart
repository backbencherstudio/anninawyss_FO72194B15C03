import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_text_style.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constansts/app_icons.dart';
import '../../widgets/custom_button.dart';

class DailyReflectionScreen extends StatefulWidget {
  const DailyReflectionScreen({super.key});

  @override
  State<DailyReflectionScreen> createState() => _DailyReflectionScreenState();
}

class _DailyReflectionScreenState extends State<DailyReflectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(showBackButton: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                  child: Text("Daily Reflection", style: AppTextStyles.nunitoS18BoldC2F2A29,)),
              SizedBox(height: 16.h,),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "How are you day today?",
                  style: AppTextStyles.nunitoS18BoldC2F2A29,
                ),
              ),

              SizedBox(height: 20.h,),
              Container(
                  padding: EdgeInsets.all(12.r),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackgroundColor,
                    borderRadius: BorderRadius.circular(12.r),

                  ),
                  child: Column(
                    children: [
                      Image.asset(AppIcons.sadIcon, height: 32, width: 32,),
                      SizedBox(height: 12.h),
                      Text("Today’s Mode: Sad", style: AppTextStyles.nunitoS18BoldC2F2A29),
                      SizedBox(height: 6.h),
                      Text("It’s okay to feel sad. Let’s take a deep breath together and find calm.", textAlign: TextAlign.center, style: AppTextStyles.nunitoS16W500C6B7280),
                    ],
                  )
              ),
              SizedBox(height: 20.h,),
              Text("Please fill-up this according to your today’s mood", style: AppTextStyles.nunitoS18BoldC2F2A29,),
              SizedBox(height: 18.h,),
              Text("Q. What made you feel good today?", style: AppTextStyles.nunitoS14RegularC2F2A29,),
              SizedBox(height: 12.h,),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Type your answer here...',
                  hintStyle: AppTextStyles.nunitoS14RegularC2F2A29,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF96B2D0)),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF96B2D0)),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
              //
              SizedBox(height: 18.h,),
              Text("Q. What was challenging?", style: AppTextStyles.nunitoS14RegularC2F2A29,),
              SizedBox(height: 12.h,),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Type your answer here...',
                  hintStyle: AppTextStyles.nunitoS14RegularC2F2A29,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF96B2D0)),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF96B2D0)),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
              //
              SizedBox(height: 18.h,),
              Text("Q. What are you grateful for today?", style: AppTextStyles.nunitoS14RegularC2F2A29,),
              SizedBox(height: 12.h,),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Type your answer here...',
                  hintStyle: AppTextStyles.nunitoS14RegularC2F2A29,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF96B2D0)),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF96B2D0)),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
              //
              SizedBox(height: 18.h,),
              Text("Q. Today I am proud of...", style: AppTextStyles.nunitoS14RegularC2F2A29,),
              SizedBox(height: 12.h,),
              TextFormField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Type your answer here...',
                  hintStyle: AppTextStyles.nunitoS14RegularC2F2A29,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF96B2D0)),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF96B2D0)),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
              SizedBox(height: 30.h,),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 140.w,
                    child: CustomButton(buttonText: "Save", onTap: (){})),
              ),
              SizedBox(height: 30.h,),

            ],
          ),
        ),
      ),
    );
  }
}
