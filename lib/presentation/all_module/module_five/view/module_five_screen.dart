import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_text_style.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_content_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/route/route_manager.dart';

class ModuleFiveScreen extends StatefulWidget {
  const ModuleFiveScreen({super.key});

  @override
  State<ModuleFiveScreen> createState() => _ModuleFiveScreenState();
}

class _ModuleFiveScreenState extends State<ModuleFiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("First Weeks After the Breakup", style: AppTextStyles.nunitoS18BoldC2F2A29,),
                    SizedBox(height: 4.h,),
                    Text("Welcome to your journey of healing. Here, you'll find the tools and support to rebuild your life.", style: AppTextStyles.interS16RegularC6B7280,),
                    SizedBox(height: 12.h,),
                    CustomContentButton(text: "Calming The Nervous System", onTap: (){
                      Navigator.pushNamed(context, Routes.calmingNervousSystemRoute);
                    }),
                    SizedBox(height: 12.h,),
                    CustomContentButton(text: "Withdrawal Plan", onTap:(){
                      Navigator.pushNamed(context, Routes.withdrawalPlanRoute);
                    } ),
                    SizedBox(height: 12.h,),
                    CustomContentButton(text: "Thought Check", onTap: (){
                      Navigator.pushNamed(context, Routes.thoughtCheckRoute);
                    }),
                    SizedBox(height: 24.h,),
                    CustomButton(buttonText: "Module 6 – Healing Plan", onTap: (){}),
                    SizedBox(height: 12.h,),
                    CustomButton(buttonText: "SOS Area", onTap: (){}),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
