import 'package:anninawyss_o72194b15c03/core/constansts/app_text_style.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_description_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constansts/app_colors.dart';

class RealityCheckScreen extends StatefulWidget {
  const RealityCheckScreen({super.key});

  @override
  State<RealityCheckScreen> createState() => _RealityCheckScreenState();
}

class _RealityCheckScreenState extends State<RealityCheckScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _textEditingController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Reality Check", style: AppTextStyles.nunitoS18BoldC2F2A29,),
              SizedBox(height: 8.h,),
              Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Relationship Check", style: AppTextStyles.nunitoS16BoldC2F2A29,),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: ". ",
                            style: TextStyle(
                              fontSize: 30,   // Bigger dot
                              color: Color(0Xff6B7280),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "What kind of relationship do I wish for?",
                            style: AppTextStyles.interS16RegularC6B7280
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h,),
                    CustomDescriptionTextField(hintText: "A healthy, respectful, supportive, and balanced partnership.", controller: _textEditingController),
                    SizedBox(height: 16.h,),
                  // What kind of relationship do I have with him?
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: ". ",
                            style: TextStyle(
                              fontSize: 30,   // Bigger dot
                              color: Color(0Xff6B7280),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "What kind of relationship do I wish for?",
                            style: AppTextStyles.interS16RegularC6B7280,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h,),
                    CustomDescriptionTextField(hintText: "Often imbalanced, emotionally draining, and marked by manipulation or inconsistency.", controller: _textEditingController),
                    SizedBox(height: 12.h,),
          
          
          
          
                  ],
                ),
              ),
              SizedBox(height: 14.h,),
          
              Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Recording the Negative Experiences", style: AppTextStyles.nunitoS16BoldC2F2A29,),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: ". ",
                            style: TextStyle(
                              fontSize: 30,   // Bigger dot
                              color: Color(0Xff6B7280),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "What happened?",
                            style: AppTextStyles.interS16RegularC6B7280,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h,),
                    CustomDescriptionTextField(hintText: "A healthy, respectful, supportive, and balanced partnership.", controller: _textEditingController),
                    SizedBox(height: 16.h,),
                    // What kind of relationship do I have with him?
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: ". ",
                            style: TextStyle(
                              fontSize: 30,   // Bigger dot
                              color: Color(0Xff6B7280),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "How did I feel?",
                            style: AppTextStyles.interS16RegularC6B7280,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h,),
                    CustomDescriptionTextField(hintText: "Often imbalanced, emotionally draining, and marked by manipulation or inconsistency.", controller: _textEditingController),
                    SizedBox(height: 12.h,),

                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: ". ",
                            style: TextStyle(
                              fontSize: 30,   // Bigger dot
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "What were the consequences?",
                            style: TextStyle(
                              fontSize: 16,   // Normal text size
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h,),
                    CustomDescriptionTextField(hintText: "Often imbalanced, emotionally draining, and marked by manipulation or inconsistency.", controller: _textEditingController),
                    SizedBox(height: 12.h,),
          
          
          
                  ],
                ),
              ),
              SizedBox(height: 14.h,),

              Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Advantages of ending the relationship", style: AppTextStyles.nunitoS16BoldC2F2A29,),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: ". ",
                            style: TextStyle(
                              fontSize: 30,   // Bigger dot
                              color: Color(0Xff6B7280),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "Welcome to your journey of healing. Here, you'll find the tools and support to rebuild your life.",
                            style:AppTextStyles.interS16RegularC6B7280,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h,),
                    CustomDescriptionTextField(hintText: "A healthy, respectful, supportive, and balanced partnership.", controller: _textEditingController),
                    SizedBox(height: 16.h,),
                    // What kind of relationship do I have with him?




                  ],
                ),
              ),
              SizedBox(height: 14.h,),


              Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.cardBackgroundColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Previous attempts to save the relationship + outcome", style: AppTextStyles.nunitoS16BoldC2F2A29,),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: ". ",
                            style: TextStyle(
                              fontSize: 30,   // Bigger dot
                              color: Color(0Xff6B7280),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "Welcome to your journey of healing. Here, you'll find the tools and support to rebuild your life.",
                            style: AppTextStyles.interS16RegularC6B7280,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h,),
                    CustomDescriptionTextField(hintText: "A healthy, respectful, supportive, and balanced partnership.", controller: _textEditingController),


                  ],

                ),
              ),
              SizedBox(height: 18.h,),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                    width: 140.w,
                    child: CustomButton(buttonText: "Save", onTap: (){})),
              ),
              SizedBox(height: 18.h,),
            ],
          ),
        ),
      ),
    );
  }
}
