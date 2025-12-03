import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/route/route_manager.dart';
import '../../../widgets/app_bar_auth.dart';
import '../../../widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            Text("Log in", style: TextStyle(color: AppColors.primaryTextColor, fontSize: 32,fontWeight: FontWeight.w600)),
            SizedBox(height: 6.h,),
            Text("Nice to have you back!",),
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
            SizedBox(height: 8.h,),
            CustomTextFormField(hintText: 'Enter your password',obscureText: true,),
            SizedBox(height: 8.h,),
            Row(
              children: [
                Checkbox(
                    value: true,
                    onChanged: (val){},
                  activeColor: const Color(0xff96B2D0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                const Text('Keep me signed in'),
              ],
            ),

            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.forgetPasswordRoute);
                },
                child: Text("Forget Password?",
                    style: TextStyle(
                        color: AppColors.btnBackgroundColor, fontSize: 14.sp, fontWeight: FontWeight.w600)),
              ),
            ),
            SizedBox(height: 10.h,),
            CustomButton(buttonText: "Login", onTap: (){}),
            SizedBox(height: 24,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don’t have an account?", style: TextStyle(color: Color(0xff575757))),
                SizedBox(width: 4.w,),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.signupRoute);
                  },
                  child: Text("Sign Up",
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



