import 'package:anninawyss_o72194b15c03/core/constansts/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../core/constansts/app_colors.dart';
import '../../../core/constansts/app_images.dart';
import '../../../core/route/route_manager.dart';
import '../../widgets/custom_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.welcomeImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.splashBackground,
                  height: 250,
                  width: 250,
                ),
                const SizedBox(height: 40),
                const Text(
                  AppStrings.splashTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 40),
                CustomButton(
                  buttonText: AppStrings.getStarted,
                  onTap: () {
                    Navigator.pushNamed(context, Routes.welcomeRoute);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
