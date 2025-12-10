import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_content_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constansts/app_text_style.dart';
import '../../../../core/route/route_manager.dart';

class ModuleThreeScreen extends StatefulWidget {
  const ModuleThreeScreen({super.key});

  @override
  State<ModuleThreeScreen> createState() => _ModuleThreeScreenState();
}

class _ModuleThreeScreenState extends State<ModuleThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding:  EdgeInsets.all(16.r),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                color: AppColors.cardBackgroundColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                children: [
                  Text("Clarity and Security", style: AppTextStyles.nunitoS16BoldC2F2A29,),
                  SizedBox(height: 6.h,),
                  Text("Welcome to your journey of healing. Here, you'll find the tools and support to rebuild your life.", style: AppTextStyles.interS16RegularC6B7280 ,),
                  SizedBox(height: 16.h,),
                  CustomContentButton(text: "Reality Check", onTap: (){
                    Navigator.pushNamed(context, Routes.realityCheckRoute);
                  }),
                  SizedBox(height: 16.h,),
                  CustomContentButton(text: "Define No-Go’s", onTap: (){
                    Navigator.pushNamed(context, Routes.defineNoGoRoute);
                  }),
                  SizedBox(height: 16.h,),
                  CustomContentButton(text: "Activate Support from Your Environment", onTap: (){
                    Navigator.pushNamed(context, Routes.activateSupportRoute);
                  }),
                  SizedBox(height: 24.h,),
                  CustomButton(buttonText: "Module 4 – Plan and Implement Separation", onTap: (){
                    Navigator.pushNamed(context, Routes.moduleFourRoute);
                  }),
                  SizedBox(height:  12.h),
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
