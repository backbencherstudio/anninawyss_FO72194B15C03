import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constansts/app_colors.dart';
import '../../../../core/constansts/app_text_style.dart';
import '../../../widgets/custom_app_bar.dart';
import '../provider/narcisssistic_nervous_system.dart';

class NarcissisticNervousSystem extends ConsumerWidget {
  const NarcissisticNervousSystem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final narcissisticNervous = ref.watch(narcissisticNervousProvider);
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding:  EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text("What narcissistic abuse does to the nervous system", style: AppTextStyles.nunitoS18BoldC2F2A29,),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(16),
                        itemCount: narcissisticNervous.length,
                        itemBuilder: (context, index) {
                          final item = narcissisticNervous[index];
                          return Container(
                            padding: EdgeInsets.all(8.r),
                            margin: EdgeInsets.only(bottom: 12.h),
                            decoration: BoxDecoration(
                              color:  Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0Xff96B2D0),
                                width: 1,
                              ),
                            ),
                            child: ExpansionTile(
                              iconColor: Colors.black,
                              collapsedIconColor: Colors.black,
                              title: Text(
                                item.title,
                                style: AppTextStyles.nunitoS16BoldC2F2A29.copyWith(color: Colors.black),
                              ),
                              children: [
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteBackgroundColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: item.content
                                        .split('\n')
                                        .map((line) => line.trim())
                                        .where((line) => line.isNotEmpty)
                                        .map((text) => Padding(
                                      padding: const EdgeInsets.only(bottom: 6),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          // If line starts with => show bullet
                                          Text(text.startsWith('=>') ? '•  ' : ''),
                                          Expanded(
                                            child: Text(
                                              text.replaceFirst('=>', '').trim(),
                                              style: AppTextStyles.interS16RegularC6B7280,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))
                                        .toList(),
                                  ),

                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
