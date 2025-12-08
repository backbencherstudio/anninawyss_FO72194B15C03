import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_subtitle_text.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPersonalStory extends StatelessWidget {
  const MyPersonalStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h,),
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
                  TitleText(title:" My Personal Story"),
                  SizedBox(height: 12.h,),
                  SubTitle(subtitle: "'You are not alone in this. My own journey with a narcissistic relationship inspired this app.'")
                ],
              ),
            )
        ],
            ),
      ),
    );
  }
}
