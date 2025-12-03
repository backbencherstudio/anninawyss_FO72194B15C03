import 'package:anninawyss_o72194b15c03/core/constansts/app_colors.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/app_bar_auth.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/route/route_manager.dart';
import '../../../widgets/custom_text_form_field.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      appBar: AppBarAuth(),
      body: Padding(
        padding:  EdgeInsets.all(20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h,),
            Text("Create new password", style: TextStyle(fontSize: 18.sp, color: AppColors.primaryTextColor, fontWeight: FontWeight.w600),),
            SizedBox(height: 12.h,),
            Text("Your new password must be unique from those previously used.", style: TextStyle(color: AppColors.greyTextColor, fontSize: 16.sp),),
            SizedBox(height: 32.h,),


            // Confirm password field

            RichText(
              text: TextSpan(
                text: 'Enter Password',
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
            const CustomTextFormField(hintText: 'Confirm password',obscureText: true),
            SizedBox(height: 32.sp,),

            CustomButton(buttonText: "Reset Password", onTap: (){
              Navigator.pushNamed(context, Routes.changePasswordSuccessRoute);
            })



          ],
        ),
      ),
    );
  }
}
