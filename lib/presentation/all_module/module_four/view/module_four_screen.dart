import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_content_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constansts/app_text_style.dart';
import '../../../../core/route/route_manager.dart';

class ModuleFourScreen extends StatefulWidget {
  const ModuleFourScreen({super.key});

  @override
  State<ModuleFourScreen> createState() => _ModuleFourScreenState();
}

class _ModuleFourScreenState extends State<ModuleFourScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: AppColors.whiteBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            Container(
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                color: AppColors.cardBackgroundColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Plan and Implement Separation", style: AppTextStyles.nunitoS16BoldC2F2A29,),
                  SizedBox(height: 12.h,),
                  Text("Welcome to your journey of healing. Here, you'll find the tools and support to rebuild your life.", style: AppTextStyles.interS16RegularC6B7280,),
                  SizedBox(height: 18.h,),
                  CustomContentButton(text: "Preparation", onTap: (){
                    Navigator.pushNamed(context, Routes.preparationRoute);
                  }),
                  SizedBox(height: 18.h,),
                  CustomContentButton(text: "Grey Rock", onTap: (){
                    Navigator.pushNamed(context, Routes.greyRockRoute);
                  }),
                  SizedBox(height: 18.h,),
                  CustomContentButton(text: "Separation Script", onTap: (){
                    Navigator.pushNamed(context, Routes.separationScriptRoute);
                  }),
                  SizedBox(height: 18.h,),
                  CustomContentButton(text: "No Contact", onTap: (){}),
                  SizedBox(height: 24.h,),

                  CustomButton(buttonText: "Module 5 – First Weeks After Separation", onTap: (){
                    Navigator.pushNamed(context, Routes.moduleFiveScreenRoute);
                  }),
                  SizedBox(height: 20.h,),
                  CustomButton(buttonText: "SOS Area", onTap: (){}),





                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
