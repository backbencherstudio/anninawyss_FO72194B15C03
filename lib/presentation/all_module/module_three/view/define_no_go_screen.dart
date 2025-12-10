import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constansts/app_text_style.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_description_widget.dart';

class DefineNoGoScreen extends StatefulWidget {
  const DefineNoGoScreen({super.key});

  @override
  State<DefineNoGoScreen> createState() => _DefineNoGoScreenState();
}

class _DefineNoGoScreenState extends State<DefineNoGoScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _textEditingController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Define No-Go’s", style: AppTextStyles.nunitoS18BoldC2F2A29,),
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
                 // Text("Advantages of ending the relationship", style: AppTextStyles.nunitoS16BoldC2F2A29,),
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


                Text("Formulate a decision statement:", style: AppTextStyles.nunitoS16BoldC2F2A29,),
                  SizedBox(height: 12.h,),
                  Text("\"If xyz happens, then I will end the relationship.\"", style: AppTextStyles.interS16RegularC6B7280,),
                  SizedBox(height: 12.h,),
                  CustomDescriptionTextField(hintText: "A healthy, respectful, supportive, and balanced partnership.", controller: _textEditingController),
                  SizedBox(height: 12.h,),

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

    );
  }
}
