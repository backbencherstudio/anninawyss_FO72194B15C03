import 'package:anninawyss_o72194b15c03/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constansts/app_colors.dart';
import '../../../../core/constansts/app_images.dart';
import '../../../../core/route/route_manager.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.btnBackgroundColor,
      body: Column(
        children: [
          const Spacer(),
          Image.asset(AppImages.splashBackground, height: 250.h),
          const Spacer(),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
              ),
              child: Padding(
                padding:  EdgeInsets.all(24.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headlineMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          const TextSpan(text: 'Welcome to, '),
                          TextSpan(
                            text: 'SeelenKompass',
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.secondaryColor,
                                ),
                          ),
                        ],
                      ),
                    ),
                     SizedBox(height: 8.h),
                    Text(
                      "Where recovery takes root and strength blossoms.",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.greyTextColor,
                      ),
                    ),
                    SizedBox(height: 32),
                    CustomButton(buttonText: "Login", onTap: () {
                      Navigator.pushNamed(context, Routes.loginRoute);
                    }),
                     SizedBox(height: 16.h),
                    CustomButton(
                      buttonText: "Sign Up",
                      onTap: () {},
                      buttonBackground: AppColors.whiteBackgroundColor,
                      borderColor: AppColors.whiteButtonBorderColor,
                      textColor: AppColors.whiteButtonTextColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
