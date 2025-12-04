import 'package:anninawyss_o72194b15c03/core/constansts/app_icons.dart';
import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constansts/app_colors.dart';
import '../../../../core/route/route_manager.dart';
class ChangePasswordSuccess extends StatefulWidget {
  const ChangePasswordSuccess({super.key});

  @override
  State<ChangePasswordSuccess> createState() => _ChangePasswordSuccessState();
}

class _ChangePasswordSuccessState extends State<ChangePasswordSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppIcons.passwordChangeSuccess, height: 150.h, width: 150.w,),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Password Changed!',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Your password has been changed successfully.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.sp, color: Colors.grey) ,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(buttonText: "Go To Home", onTap: (){
                Navigator.pushNamed(context, Routes.bottomNavBarScreenRoute);
              })
            ],
          ),
        ),
      ),
    );
  }
}
