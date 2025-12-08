import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_subtitle_text.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ExplainAppDetails extends StatefulWidget {
  const ExplainAppDetails({super.key});

  @override
  State<ExplainAppDetails> createState() => _ExplainAppDetailsState();
}

class _ExplainAppDetailsState extends State<ExplainAppDetails> {
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
                 TitleText(title: "Reason for creating the app"),
                 SizedBox(height: 8.h,),
                 SubTitle(subtitle: "The Narcissistic App was created to help individuals understand, identify, and manage narcissistic traits within themselves or others. In modern digital culture, narcissistic behavior often goes unnoticed or is misinterpreted. This app aims to raise awareness about narcissism through self-assessment tools, psychological insights, and guided resources. The purpose is not to label users but to promote self-awareness, emotional intelligence, and personal growth in a healthy and judgment-free environment.")
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
