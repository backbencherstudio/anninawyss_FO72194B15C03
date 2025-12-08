import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_subtitle_text.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/route/route_manager.dart';

class SelfTestScreen extends StatelessWidget {
  const SelfTestScreen({super.key});

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
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                color: AppColors.cardBackgroundColor,
                borderRadius: BorderRadius.circular(12.r),
                
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(title: "Self-Test: Signs of a Toxic Relationship"),
                  SizedBox(height: 8.h,),
                  SubTitle(subtitle: "Answer the questions below to get a better understanding of your relationship dynamics."),
                  SizedBox(height: 18.h,),
                  TitleText(title: "Disclaimer:"),
                  SizedBox(height: 8.h,),
                  SubTitle(subtitle: "This test is intended solely for self-reflection. It can provide indications of narcissistic relationship patterns but does not replace a diagnosis by professionals. For a reliable assessment, please consult a qualified specialist (e.g., psychotherapist). Any liability for decisions or actions derived from the results of this test is excluded."),
                  SizedBox(height: 18.h,),
                  CustomButton(buttonText: "Next", onTap: (){
                    Navigator.pushNamed(context, Routes.questionScreenRoute);
                  }),
                  SizedBox(height: 20.h,),
//
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
