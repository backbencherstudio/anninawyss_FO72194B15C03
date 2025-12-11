import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_description_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constansts/app_icons.dart';
import '../../../../core/constansts/app_text_style.dart';
import '../provider/withdrawal_plan_provider.dart';

class WithdrawalPlanScreen extends ConsumerStatefulWidget {
  const WithdrawalPlanScreen({super.key});

  @override
  ConsumerState<WithdrawalPlanScreen> createState() =>
      _WithdrawalPlanScreenState();
}

class _WithdrawalPlanScreenState extends ConsumerState<WithdrawalPlanScreen> {
   final TextEditingController _textEditingController = TextEditingController();
  final List<String> _titles = [
    "4D Rule For The to Contact",
    "Writing a Letter That You Don’t Send",
    "Looking at the Negative List",
  ];

  @override
  Widget build(BuildContext context) {
    final isExpanded = ref.watch(withdrawalPlanProvider);

    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Withdrawal Plan", style: AppTextStyles.nunitoS18BoldC2F2A29),
            SizedBox(height: 16.h),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: isExpanded.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 8.h),
                      decoration: BoxDecoration(
                        color: index == 0
                            ? AppColors.whiteBackgroundColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(_titles[index]),
                            trailing: Icon(
                              isExpanded[index]
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                            ),
                            onTap: () {
                              ref
                                  .read(withdrawalPlanProvider.notifier)
                                  .toggle(index);
                            },
                          ),
                          if (isExpanded[index])
                            Container(
                              padding: EdgeInsets.fromLTRB(16.r, 0, 16.r, 16.r),
                              child: _buildContainer(index),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(int index) {
    switch (index) {
      case 0:
        return Container(
          decoration: BoxDecoration(
            color: AppColors.whiteBackgroundColor,
            borderRadius: BorderRadius.circular(12.r),
          ),
          alignment: Alignment.center,
          child: Text(
            "The 4D rule helps manage the intense urge to contact them. Delay: Wait for a set period. Distract: Engage in an activity that requires focus. Detach: Observe the feeling without judgment. Decide: Re-evaluate if contacting them is the right choice after the urge has subsided.",
            style: AppTextStyles.interS16RegularC6B7280,
          ),
        );
      case 1:
        return Container(
          decoration: BoxDecoration(
            color: AppColors.whiteBackgroundColor,
            borderRadius: BorderRadius.circular(12.r),
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "Write a letter to get all your feelings out without the consequence of sending it. This is for you to process your emotions.",
                style: AppTextStyles.interS16RegularC6B7280,
              ),
              SizedBox(height: 16.h,),
              CustomDescriptionTextField(hintText: "Start writing your letter...", controller: _textEditingController),
              SizedBox(height: 16.h,),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 150.w,
                  child: CustomButton(
                    buttonText: "Save",
                    onTap: () {},
                  ),
                ),
              )

            ],
          ),
        );

      default:
        return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start, // aligns children to the top
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 4.r), // optional: adjust if text baseline is higher
                      child: Icon(
                        Icons.circle,
                        size: 8.r,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Text(
                        'The 4-7-8 breathing technique, also known as "relaxing breath," involves breathing in for 4 seconds, holding the breath for 7 seconds, and exhaling for 8 seconds.',
                        style: AppTextStyles.nunitoS14RegularC2F2A29, // optional: set font size
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h,),
                CustomButton(buttonText: "Module 3 : Negative Experience",textSize: 14.sp, onTap: (){

                })

              ],
            )
        );
    }
  }
}
