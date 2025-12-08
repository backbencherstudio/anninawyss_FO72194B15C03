import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_text_style.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FunctionalityAppScreen extends StatelessWidget {
  const FunctionalityAppScreen({super.key});

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
            Text("Explanation of the app", style: TextStyle(color: Colors.black, fontSize: 18.sp),),
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
                  TitleText(title: "Functionality of the app:"),
                  SizedBox(height: 6.h,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('• ', style: AppTextStyles.interS16RegularC6B7280),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: AppTextStyles.interS16RegularC6B7280,
                            children: <TextSpan>[
                              TextSpan(text: 'Self-Assessment Quiz: ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Scientifically inspired questions to measure narcissistic traits.'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('• ', style: AppTextStyles.interS16RegularC6B7280),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: AppTextStyles.interS16RegularC6B7280,
                            children: <TextSpan>[
                              TextSpan(text: 'Result Dashboard: ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Visual representation of the user’s results and emotional patterns.'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('• ', style: AppTextStyles.interS16RegularC6B7280),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: AppTextStyles.interS16RegularC6B7280,
                            children: <TextSpan>[
                              TextSpan(text: 'Learning Hub: ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Articles, expert advice, and mental health tips for self-improvement.'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('• ', style: AppTextStyles.interS16RegularC6B7280),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: AppTextStyles.interS16RegularC6B7280,
                            children: <TextSpan>[
                              TextSpan(text: 'Daily Reflection Journal: ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'A personal space for users to record thoughts and track behavioral change.'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('• ', style: AppTextStyles.interS16RegularC6B7280),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: AppTextStyles.interS16RegularC6B7280,
                            children: <TextSpan>[
                              TextSpan(text: 'Community Forum (optional): ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'A safe environment for users to discuss experiences and share personal growth journeys.'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('• ', style: AppTextStyles.interS16RegularC6B7280),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: AppTextStyles.interS16RegularC6B7280,
                            children: <TextSpan>[
                              TextSpan(text: 'Reminders & Motivation:', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Personalized notifications to encourage mindful self-reflection.'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),

                ]
              ),
            )

          ],
        ),
      ),
    );
  }
}
