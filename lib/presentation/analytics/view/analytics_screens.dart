import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_text_style.dart';
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
        padding:  EdgeInsets.all(20.h),
        child: Column(
        children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 32.h , horizontal: 16.w),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF647D9F),
                      Color(0xFF2A4566),
                    ],
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
                        Text("Overall Progress Summary", style: TextStyle(color: Color(0XffE9E9EA), fontSize: 16.sp),),
                        Text("Happy", style: TextStyle(color: AppColors.whiteTextColor, fontSize: 28, fontWeight: FontWeight.w600),),
                        SizedBox(height: 28.h,),
                        CustomButton(buttonText: "Generate Affirmation", onTap: (){}, buttonBackground: AppColors.whiteBackgroundColor,textColor: Color(0Xff1570EF),)
                      ],
                    ),
                    Image.asset("assets/icons/happy_icon.png",)
                  ],
                ),
              ),
          SizedBox(height: 24.h,),
          Container(
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: AppColors.cardBackgroundColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Analytics Page", style: AppTextStyles.nunitoS18BoldC2F2A29,),
                SizedBox(height: 12.h,),
                Text("This is your space for self-reflection and personal insights. Here, you can observe your patterns, track your emotional progress, and understand how your healing journey is evolving. Use these insights to grow with awareness, strength, and confidence.", style: AppTextStyles.interS16RegularC6B7280,)
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
    return List.generate(5, (index) {
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
              color: AppColors.cardBackgroundColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Card Switcher ${index + 1}", style: AppTextStyles.interS16RegularC6B7280.copyWith(color: AppColors.primaryTextColor)),
                    Icon(_cardVisibility[index] ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down, color: AppColors.primaryTextColor),
                  ],
                ),
                if (_cardVisibility[index])
                  Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: Container(
                      height: 100.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.whiteBackgroundColor, // Or another color to stand out
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Center(child: Text("Card ${index + 1}", style: AppTextStyles.nunitoS18BoldC2F2A29)),
                    ),
                  ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
