import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constansts/app_text_style.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_description_widget.dart';
import '../provider/thought_check_provider.dart';
import '../provider/withdrawal_plan_provider.dart';

class ThoughtCheckScreen extends ConsumerStatefulWidget {
  const ThoughtCheckScreen({super.key});

  @override
  ConsumerState<ThoughtCheckScreen> createState() => _ThoughtCheckScreenState();
}

class _ThoughtCheckScreenState extends ConsumerState<ThoughtCheckScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  final List<String> _titles = ["Thought Check"];

  @override
  Widget build(BuildContext context) {
    final thoughtCheck = ref.watch(thoughtCheckProvider);

    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.whiteBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: thoughtCheck.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 8.h),
                      decoration: BoxDecoration(
                        color: index == 0
                            ? AppColors.cardBackgroundColor
                            : AppColors.cardBackgroundColor,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(_titles[index]),
                            trailing: Icon(
                              thoughtCheck[index]
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                            ),
                            onTap: () {
                              ref
                                  .read(thoughtCheckProvider.notifier)
                                  .toggle(index);
                            },
                          ),
                          if (thoughtCheck[index])
                            Container(
                              padding: EdgeInsets.fromLTRB(16.r, 0, 16.r, 16.r),
                              child: Column(
                                children: [
                                  _buildContainer(index),
                                  SizedBox(height: 16.h),
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.all(16.r),
                                    decoration: BoxDecoration(
                                      color: AppColors.whiteBackgroundColor,
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            size: 8.r,
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 8.w),
                                          Text(
                                            "Questions?",
                                            style: AppTextStyles
                                                .nunitoS16BoldC2F2A29,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  SizedBox(height: 16.h),
                                ],
                              ),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // optional
            children: [
              CustomDescriptionTextField(
                hintText: "Start writing your letter...",
                controller: _textEditingController,
              ),

              SizedBox(height: 20),

              Table(
                border: TableBorder.all(color: Colors.black54, width: 1),
                columnWidths: const {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(1),
                },
                children: const [
                  TableRow(
                    children: [
                      Padding(padding: EdgeInsets.all(8), child: Text("Name")),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text("John Doe"),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(padding: EdgeInsets.all(8), child: Text("Age")),
                      Padding(padding: EdgeInsets.all(8), child: Text("25")),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(padding: EdgeInsets.all(8), child: Text("City")),
                      Padding(padding: EdgeInsets.all(8), child: Text("Dhaka")),
                    ],
                  ),
                ],
              ),
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
                crossAxisAlignment:
                    CrossAxisAlignment.start, // aligns children to the top
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.r,
                    ), // optional: adjust if text baseline is higher
                    child: Icon(Icons.circle, size: 8.r, color: Colors.black),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Text(
                      'The 4-7-8 breathing technique, also known as "relaxing breath," involves breathing in for 4 seconds, holding the breath for 7 seconds, and exhaling for 8 seconds.',
                      style: AppTextStyles
                          .nunitoS14RegularC2F2A29, // optional: set font size
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              CustomButton(
                buttonText: "Module 3 : Negative Experience",
                textSize: 14.sp,
                onTap: () {},
              ),
            ],
          ),
        );
    }
  }
}
