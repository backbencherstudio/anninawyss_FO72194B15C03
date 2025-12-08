import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/core/constansts/app_text_style.dart';
import 'package:anninawyss_o72194b15c03/core/route/route_manager.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../provider/question_provider.dart';


class QuestionScreen extends ConsumerWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questions = ref.watch(questionsProvider);
    final index = ref.watch(currentQuestionIndexProvider);
    final selectedOption = ref.watch(selectedOptionProvider);

    final currentQuestion = questions[index];

    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.all(16.r),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColors.cardBackgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Question ${index + 1}:",
                style: AppTextStyles.nunitoS18BoldC2F2A29,
              ),
              const SizedBox(height: 20),

              Text(
                currentQuestion.question,
                style:AppTextStyles.interS16RegularC6B7280,
              ),
              const SizedBox(height: 20),

              ...List.generate(currentQuestion.options.length, (i) {
                return GestureDetector(
                  onTap: () {
                    ref.read(selectedOptionProvider.notifier).state = i;
                  },
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: selectedOption == i
                          ? Color(0Xff627B99)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.borderColor,
                      ),
                    ),
                    child: Text(
                      currentQuestion.options[i],
                      style: TextStyle(
                        color: selectedOption == i ? Colors.white : Color(0Xff6B7280),
                      fontWeight: FontWeight.w500),
                    ),
                  ),
                );
              }),

              SizedBox(height: 24.h,),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: selectedOption == null
                      ? null
                      : () {
                    if (index < questions.length - 1) {
                      ref
                          .read(currentQuestionIndexProvider.notifier)
                          .state++;
                      ref
                          .read(selectedOptionProvider.notifier)
                          .state = null;
                    } else {
                      Navigator.pushNamed(context, Routes.evaluationScreenRoute);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff2A4566),
                  ),

                  child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 16.sp)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
