import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_text_style.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_subtitle_text.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EvaluationScreen extends StatefulWidget {
  const EvaluationScreen({super.key});

  @override
  State<EvaluationScreen> createState() => _EvaluationScreenState();
}

class _EvaluationScreenState extends State<EvaluationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24.h,),
              Text("Evaluation", style: AppTextStyles.nunitoS18BoldC2F2A29,),
              SizedBox(height: 12.h,),
              Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
          
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(title: "Mostly 1)"),
                    SizedBox(height: 8.h,),
                    SubTitle(subtitle: "Your answers strongly point to narcissistic dynamics. It is very likely that you are in or have been in a toxic relationship. Important: You are not to blame for this. Seek out information, support, or professional guidance."),
                  ],
                ),
              ),
          
              SizedBox(height: 16.h,),
          
              Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
          
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(title: "Mostly 2)"),
                    SizedBox(height: 8.h,),
                    SubTitle(subtitle: "Some of your answers indicate patterns that can be typical of narcissistic abuse. This does not automatically mean that your partner has a narcissistic personality disorder, but it does show that your relationship is burdensome."),
                  ],
                ),
              ),
          
              SizedBox(height: 16.h,),
          
          
              Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
          
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(title: "Mostly 3)"),
                    SizedBox(height: 8.h,),
                    SubTitle(subtitle: "There are only few signs of narcissistic patterns. Still, remain mindful and stay true to yourself."),
                  ],
                ),
              ),
          
              SizedBox(height: 16.h,),
          
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
