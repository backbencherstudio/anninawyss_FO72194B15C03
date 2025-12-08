import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constansts/app_colors.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_subtitle_text.dart';
import '../../widgets/custom_title_text.dart';

class DisclaimerAppScreen extends StatelessWidget {
  const DisclaimerAppScreen({super.key});

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
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColors.whiteBackgroundColor,
                  border: Border.all(
                    color: Color(0xFF96B2D0),
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(title: "Disclaimer:"),
                  SizedBox(height: 8.h,),
                  SubTitle(subtitle: "This app is designed for educational and self-awareness purposes only. It does not provide a medical diagnosis or replace professional mental health care. Users who believe they may have Narcissistic Personality Disorder (NPD) or any other psychological condition should consult a qualified psychologist or therapist. The app ensures data privacy and confidentiality of all user information.")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
