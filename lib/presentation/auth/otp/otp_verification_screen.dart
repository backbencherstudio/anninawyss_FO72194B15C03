import 'package:anninawyss_o72194b15c03/core/route/route_manager.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/app_bar_auth.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../core/constansts/app_colors.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAuth(),
      backgroundColor: AppColors.whiteBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            Text(
              "Forgot Password",
              style: TextStyle(
                color: AppColors.primaryTextColor,
                fontSize: 32.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              "Don't worry! It occurs. Please enter the email address linked with your account.",
              style: TextStyle(
                color: AppColors.greyTextColor,
                fontSize: 16.sp,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 24.h),


            Center(
              child: Pinput(
                controller: pinController,
                length: 4,
                defaultPinTheme: PinTheme(
                  height: 56.h,
                  width: 56.w,
                  textStyle: TextStyle(
                    fontSize: 20.sp,
                    color: AppColors.primaryTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    border: Border.all(color: AppColors.borderColor),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  height: 56.h,
                  width: 56.w,
                  textStyle: TextStyle(
                    fontSize: 20.sp,
                    color: AppColors.primaryTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    border: Border.all(color: Color(0Xff627B99), width: 2),
                  ),
                ),
                onCompleted: (value) {
                  print("OTP Entered: $value");
                },
              ),
            ),
            SizedBox(height: 16.h),
            Center(child: Text("This OTP will be available during 00:59sec", style: TextStyle(color: AppColors.greyTextColor, fontSize: 14.sp),)),
            SizedBox(height: 24.h,),
            CustomButton(buttonText: "Continue", onTap: (){
              Navigator.pushNamed(context, Routes.createNewPasswordRoute);
            })
          ],
        ),
      ),
    );
  }
}
