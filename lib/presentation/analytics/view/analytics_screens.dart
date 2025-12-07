import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_text_style.dart';
import 'package:anninawyss_o72194b15c03/presentation/analytics/widgets/mood_analytics_chart.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  // bool _showAllCards = false;
  List<bool> _cardVisibility = List.generate(5, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.h),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 16.w),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF647D9F), Color(0xFF2A4566)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Overall Progress Summary",
                        style: TextStyle(
                          color: Color(0XffE9E9EA),
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        "Happy",
                        style: TextStyle(
                          color: AppColors.whiteTextColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 28.h),
                      CustomButton(
                        buttonText: "Generate Affirmation",
                        onTap: () {},
                        buttonBackground: AppColors.whiteBackgroundColor,
                        textColor: Color(0Xff1570EF),
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/happy_icon.png"),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            Container(
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                color: AppColors.cardBackgroundColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Analytics Page",
                    style: AppTextStyles.nunitoS18BoldC2F2A29,
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    "This is your space for self-reflection and personal insights. Here, you can observe your patterns, track your emotional progress, and understand how your healing journey is evolving. Use these insights to grow with awareness, strength, and confidence.",
                    style: AppTextStyles.interS16RegularC6B7280,
                  ),
                ],
              ),
            ),
            ..._buildCardList(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildCardList() {
    return List.generate(4, (index) {
      return Padding(
        padding: EdgeInsets.only(top: 16.h),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _cardVisibility[index] = !_cardVisibility[index];
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
            decoration: BoxDecoration(
              color: Color(0Xff627B99),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      index == 0
                          ? "Average Mood (Daily Check-In)"
                          : (index == 1
                              ? "Module 2: Self-Test"
                              : (index == 2
                                  ? "Module 9: Self-Care Check"
                                  : (index == 3 ? "Module 12: My Attachment Type" : "Card Switcher ${index + 1}"))),
                      style: AppTextStyles.interS16RegularC6B7280.copyWith(
                        color: AppColors.whiteTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      _cardVisibility[index]
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: AppColors.whiteTextColor,
                    ),
                  ],
                ),
                if (_cardVisibility[index])
                  Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: Container(
                      // height: 100.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors
                            .whiteBackgroundColor, // Or another color to stand out
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: index == 0
                          ? MoodAnalyticsChart()
                          : index == 1
                          ? const AnalyticsContainer()
                          : index == 2
                              ? Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16.w, vertical: 12.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Evaluation Depending on Result",
                                        style: AppTextStyles
                                            .nunitoS16BoldC2F2A29,
                                      ),
                                      SizedBox(height: 12.h),
                                      Text(
                                        "Your self-care check indicates that you are consistently making time for foundational self-care (sleep, nutrition). Consider exploring emotional and social self-care activities from Module 9 to build further resilience.",
                                        style: AppTextStyles
                                            .interS16RegularC6B7280,
                                      ),
                                    ],
                                  ),
                                )
                              : index == 3
                                  ? Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.w, vertical: 12.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Evaluation Depending on Result",
                                            style: AppTextStyles
                                                .nunitoS16BoldC2F2A29,
                                          ),
                                          SizedBox(height: 12.h),
                                          RichText(
                                            text: TextSpan(
                                              style: AppTextStyles
                                                  .interS16RegularC6B7280,
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        'Your evaluation suggests an '),
                                                TextSpan(
                                                  text:
                                                      'Anxious-Ambivalent Attachment Type',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xFF627B99)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 12.h),
                                          Text(
                                            "This pattern often involves a deep fear of abandonment and a tendency to seek high levels of intimacy and approval. Understanding this can help you navigate your healing journey and build more secure relationships in the future.",
                                            style: AppTextStyles
                                                .interS16RegularC6B7280,
                                          ),
                                          SizedBox(height: 12.h),
                                          Text(
                                            "•\tOther types\n•\tSecure Attachment Type\n•\tDisorganized Attachment Type\n•\tAvoidant Attachment Type",
                                            style: AppTextStyles
                                                .interS16RegularC6B7280,
                                          )
                                        ],
                                      ),
                                    )
                                  : Center(
                                      child: Container(
                                        height: 100.h,
                                        child: Center(
                                          child: Text(
                                            "Card ${index + 1}",
                                            style: AppTextStyles
                                                .nunitoS18BoldC2F2A29,
                                          ),
                                        ),
                                      ),
                                    ),
                    ),
                  ), // This closes the if (_cardVisibility[index]) Padding
              ],
            ),
          ),
        ));
      },
    );
  }
}

class AnalyticsContainer extends StatelessWidget {
  const AnalyticsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Evaluation Text Depending on Result",
            style: AppTextStyles.nunitoS18BoldC2F2A29,
          ),
          SizedBox(height: 12.h),
          RichText(
            text: TextSpan(
              text: 'Your results show: ',
              style: AppTextStyles.interS16RegularC6B7280.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Mostly B.',
                  style: AppTextStyles.interS16RegularC6B7280.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold, // Bolding the text
                    color: AppColors.primaryTextColor
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            "This result suggests that while you may be experiencing significant challenges, you are also aware of many of the unhealthy dynamics at play. This awareness is a powerful first step toward healing and setting boundaries.",
            style: AppTextStyles.interS16RegularC6B7280
          ),
        ],
      ),
    );
  }
}


