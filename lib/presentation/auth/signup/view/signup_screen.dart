import 'package:anninawyss_o72194b15c03/presentation/widgets/app_bar_auth.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constansts/app_colors.dart';
import '../../../widgets/custom_text_form_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60.h),
            Text("Sign Up", style: TextStyle(color: AppColors.primaryTextColor, fontSize: 32,fontWeight: FontWeight.w600)),
            SizedBox(height: 6.h),
            const Text("Let's get you started!"),
            SizedBox(height: 20.h,),
           // Name Text Field

            RichText(
              text: TextSpan(
                text: 'Name',
                style: TextStyle(color: AppColors.primaryTextColor, fontSize: 16.sp),
                children: <TextSpan>[
                  TextSpan(
                    text: ' *',
                    style: TextStyle(color: Colors.red, fontSize: 16.sp),
                  ),
                ],
              ),),
            SizedBox(height: 8.h),
            const CustomTextFormField(hintText: 'Enter your name'),
            SizedBox(height: 12.h,),

            //Email Text field
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
            SizedBox(height: 8.h),
            const CustomTextFormField(hintText: 'Enter your email'),
            SizedBox(height: 12.h,),

            // Password Text field
            RichText(
              text: TextSpan(
                text: 'Password',
                style: TextStyle(color: AppColors.primaryTextColor, fontSize: 16.sp),
                children: <TextSpan>[
                  TextSpan(
                    text: ' *',
                    style: TextStyle(color: Colors.red, fontSize: 16.sp),
                  ),
                ],
              ),),
            SizedBox(height: 8.h),
            const CustomTextFormField(hintText: 'Enter your password',obscureText: true),
            SizedBox(height: 12.h),
            // Confirm Password Text field
            RichText(
              text: TextSpan(
                text: 'Confirm Password',
                style: TextStyle(color: AppColors.primaryTextColor, fontSize: 16.sp),
                children: <TextSpan>[
                  TextSpan(
                    text: ' *',
                    style: TextStyle(color: Colors.red, fontSize: 16.sp),
                  ),
                ],
              ),),
            SizedBox(height: 8.h),
            const CustomTextFormField(hintText: 'Enter your confirm password',obscureText: true),
            SizedBox(height: 8.h),

            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (val){},
                  activeColor: const Color(0xff96B2D0),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                const Flexible(child: Text('I agree to the Terms & Conditions and Privacy Policy')),
              ],
            ),

            SizedBox(height: 20.h),
            CustomButton(buttonText: "Sign Up", onTap: (){}),
            SizedBox(height: 24.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?", style: TextStyle(color: Color(0xff575757))),
                SizedBox(width: 4.w,),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Login",
                      style: TextStyle(
                          color: AppColors.btnBackgroundColor, fontSize: 14.sp, fontWeight: FontWeight.w600)),
                ),

              ],
            )




          ],
        ),
      ),
    );

  }
}