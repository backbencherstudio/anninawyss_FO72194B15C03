import 'package:anninawyss_o72194b15c03/presentation/widgets/app_bar_auth.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constansts/app_colors.dart';
import '../../../../core/route/route_manager.dart';
import '../../../widgets/custom_text_form_field.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAuth(),
      backgroundColor: AppColors.whiteBackgroundColor,
      body: Padding(
        padding:  EdgeInsets.all(20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h,),
            Text("Forgot Password", style: TextStyle(color: AppColors.primaryTextColor, fontSize: 32,fontWeight: FontWeight.w600)),
            SizedBox(height: 6.h,),
            Text("Don't worry! It occurs. Please enter the email address linked with your account.",style:TextStyle(color: AppColors.greyTextColor, fontSize: 16.sp),),
            SizedBox(height: 20.h,),

            //Name Text field
            RichText(
              text: TextSpan(
                text: 'Email',
                style: TextStyle(color: AppColors.primaryTextColor, fontSize: 16.sp),
                children: <TextSpan>[
                  TextSpan(
                    text: ' *',
                    style: TextStyle(color: Colors.red, fontSize: 16.sp),
                  ),
                ],
              ),),
            SizedBox(height: 8.h,),
            CustomTextFormField(hintText: 'Enter your email',),
            SizedBox(height: 12.h,),
            CustomButton(buttonText: "Send Code", onTap: (){
              Navigator.pushNamed(context, Routes.otpVerificationRoute);
            })
          ],
        ),
      ),
    );
  }
}
