import 'package:anninawyss_o72194b15c03/presentation/auth/create_new_password/view/create_new_password.dart';
import 'package:anninawyss_o72194b15c03/presentation/auth/forget_password/view/forget_password_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/auth/login/view/login_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/auth/otp/otp_verification_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/auth/signup/view/signup_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/auth/welcome/view/welcome_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/home/view/daily_reflection_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/home/view/home_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/module_one/view/disclaimer_app_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/module_one/view/explain_app_details.dart';
import 'package:anninawyss_o72194b15c03/presentation/module_one/view/explaination_app.dart';
import 'package:anninawyss_o72194b15c03/presentation/module_one/view/functionality_app_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/module_one/view/module_one_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/module_one/view/operation_app_details.dart';
import 'package:anninawyss_o72194b15c03/presentation/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../presentation/auth/create_new_password/view/change_password_success.dart';
import '../../presentation/bottom_nav/view/bottom_nav_bar_screen.dart';
import '../resource/app_strings.dart';

class Routes{
  static const String splashRoute="/";
  static const String welcomeRoute="/welcomeScreen";
  static const String loginRoute="/loginScreen";
  static const String signupRoute="/signupScreen";
  static const String forgetPasswordRoute="/forgetPasswordScreen";
  static const String otpVerificationRoute="/otpVerificationScreen";
  static const String createNewPasswordRoute="/createNewPasswordScreen";
  static const String changePasswordSuccessRoute="/changePasswordScreen";
  static const String bottomNavBarScreenRoute="/bottomNavBarScreen";
  static const String dailyReflectionRoute="/dailyReflectionScreen";
  static const String moduleOneScreenRoute="/moduleOneScreenRoute";
  static const String explainationAppRoute="/ExplainationAppScreen";
  static const String explainAppDetailsRoute="/explainAppDetails";
  static const String operationAppRoute="/operationAppScreen";
  static const String disclaimerAppRoute="/disclaimerAppScreen";
  static const String functionalityAppRoute="/functionalityAppScreen";


  static const String onBoadingRoute="/onBoading";
  static const String registerRoute="/register";
  static const String forgotPasswordRoute="/forgotPassword";
  static const String storeDetailsRoute="/storeDetails";

}
class RouteGenerator{
  static Route<dynamic>getRoute(RouteSettings routeSettings){
    switch (routeSettings.name) {
      case Routes.splashRoute:
      return MaterialPageRoute(builder: (_)=>const SplashScreen());
       case Routes.welcomeRoute:
      return MaterialPageRoute(builder: (_)=>WelcomeScreen());
      case Routes.loginRoute:
      return MaterialPageRoute(builder: (_)=> LoginScreen());
      case Routes.signupRoute:
        return MaterialPageRoute(builder: (_)=> SignupScreen());
       case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_)=> ForgetPasswordScreen());
 case Routes.otpVerificationRoute:
        return MaterialPageRoute(builder: (_)=> OtpVerificationScreen());
 case Routes.createNewPasswordRoute:
        return MaterialPageRoute(builder: (_)=> CreateNewPassword());
 case Routes.changePasswordSuccessRoute:
        return MaterialPageRoute(builder: (_)=> ChangePasswordSuccess());
      case Routes.bottomNavBarScreenRoute:
        return MaterialPageRoute(builder: (_)=> BottomNavBarScreen());
        case Routes.dailyReflectionRoute:
        return MaterialPageRoute(builder: (_)=> DailyReflectionScreen());
        case Routes.moduleOneScreenRoute:
        return MaterialPageRoute(builder: (_)=> ModuleOneScreen());
        case Routes.explainationAppRoute:
        return MaterialPageRoute(builder: (_)=> ExplainationApp());
        case Routes.explainAppDetailsRoute:
        return MaterialPageRoute(builder: (_)=> ExplainAppDetails());
        case Routes.operationAppRoute:
        return MaterialPageRoute(builder: (_)=> OperationAppDetails());
        case Routes.disclaimerAppRoute:
        return MaterialPageRoute(builder: (_)=> DisclaimerAppScreen());
        case Routes.functionalityAppRoute:
        return MaterialPageRoute(builder: (_)=> FunctionalityAppScreen());

      default:
      return unDefineRoute();
    }

  }
  static Route<dynamic>unDefineRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(title: Text(AppString.noRoute),),
      body: Center(child: Text(AppString.noRoute),),
    ));
  }
}