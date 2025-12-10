import 'package:anninawyss_o72194b15c03/core/route/route_manager.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_content_button.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_subtitle_text.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constansts/app_colors.dart';

class ModuleTwoScreen extends StatelessWidget {
  const ModuleTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(

      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Container(
          padding: EdgeInsets.all(16.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColors.cardBackgroundColor,

          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(title: "Understanding"),
                  SizedBox(height: 8.h,),
                  SubTitle(subtitle: "Welcome to your journey of healing. Here, you'll find the tools and support to rebuild your life."),
                  SizedBox(height: 18.h,),
                  CustomContentButton(text: "Self-test: Are you in a narcissistic relationship?", onTap: (){
                    Navigator.pushNamed(context, Routes.selfTestScreenRoute);
                  }),
                  SizedBox(height: 18.h,),
                  CustomContentButton(text: "What is narcissism?", onTap: (){
                    Navigator.pushNamed(context, Routes.whatNarcissismRoute);
                  }),
                  SizedBox(height: 18.h,),
                  CustomContentButton(text: "Narcissistic personality disorder", onTap: (){}),
                  SizedBox(height: 18.h,),
                  CustomContentButton(text: "Types of narcissism", onTap: (){
                    Navigator.pushNamed(context, Routes.narcissismType);
                  }),
                  SizedBox(height: 18.h,),
                  CustomContentButton(text: "Important terms", onTap: (){
                    Navigator.pushNamed(context, Routes.importantTermsRoute);
                  }),
                  SizedBox(height: 18.h,),
                  CustomContentButton(text: "Cycle of narcissistic relationships", onTap: (){
                    Navigator.pushNamed(context, Routes.cycleNarcissisticRoute);
                  }),
                  SizedBox(height: 18.h,),
                  CustomContentButton(text: "Forms of psychological abuse", onTap: (){
                    Navigator.pushNamed(context, Routes.psychologicalAbuseRoute);
                  }),
                  SizedBox(height: 18.h,),
                  CustomContentButton(text: "Psychological & physical signs of narcissistic abuse", onTap: (){
                    Navigator.pushNamed(context, Routes.narcissisticAbuse);
                  }),
                  SizedBox(height: 18.h,),
                  CustomContentButton(text: "What narcissistic abuse does to the nervous system", onTap: (){
                    Navigator.pushNamed(context, Routes.narcissisticNervousRoute);
                  }),
                  SizedBox(height: 18.h,),
                  CustomContentButton(text: "Retraumatization through the environment", onTap: (){}),
                  SizedBox(height: 24.h,),
                  
                  CustomButton(buttonText: "Where do you currently stand?", onTap: (){}),
                  SizedBox(height: 16.h,),
                  CustomButton(buttonText: "SOS Area", onTap: (){}),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
