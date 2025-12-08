import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constansts/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_subtitle_text.dart';
import '../../widgets/custom_title_text.dart';
class OperationAppDetails extends StatelessWidget {
  const OperationAppDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h,),
            Text("Explanation of the app", style: TextStyle(color: Colors.black, fontSize: 18.sp),),
            SizedBox(height: 20.h,),
            Container(
              padding: EdgeInsets.all(16.r),

              decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(title: "Operation of the app:"),
                  SizedBox(height: 8.h,),
                  SubTitle(subtitle: "The app operates through an interactive and user-friendly system. Users begin by creating a personal profile and answering a series of psychological and behavioral questions based on established narcissism assessment scales. After completing the test, the app provides a personalized analysis showing the user’s narcissistic tendencies, along with insights and recommendations for improvement. It also includes educational articles, daily reflections, and progress tracking to encourage self-development over time.")
                ],
              ),
            )
          ],
        ),
      ),
    );;
  }
}
