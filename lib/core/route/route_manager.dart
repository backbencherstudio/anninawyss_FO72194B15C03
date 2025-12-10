import 'package:anninawyss_o72194b15c03/presentation/all_module/module_three/view/define_no_go_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_three/view/module_three_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_three/view/reality_check_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_two/view/cycle_narcissistic_relation.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_two/view/important_terms.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_two/view/modul_two_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_two/view/narcissism_type.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_two/view/narcissistic_abuse.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_two/view/psychological_abuse_form.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_two/view/question_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_two/view/self_test_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/all_module/module_two/view/what_narcissism.dart';
import 'package:anninawyss_o72194b15c03/presentation/auth/create_new_password/view/create_new_password.dart';
import 'package:anninawyss_o72194b15c03/presentation/auth/forget_password/view/forget_password_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/auth/login/view/login_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/auth/otp/otp_verification_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/auth/signup/view/signup_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/auth/welcome/view/welcome_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/home/view/daily_reflection_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../presentation/all_module/module_one/view/disclaimer_app_screen.dart';
import '../../presentation/all_module/module_one/view/explain_app_details.dart';
import '../../presentation/all_module/module_one/view/explaination_app.dart';
import '../../presentation/all_module/module_one/view/functionality_app_screen.dart';
import '../../presentation/all_module/module_one/view/module_one_screen.dart';
import '../../presentation/all_module/module_one/view/my_personal_story.dart';
import '../../presentation/all_module/module_one/view/operation_app_details.dart';
import '../../presentation/all_module/module_three/view/activate_support_environment.dart';
import '../../presentation/all_module/module_two/view/evaluation_screen.dart';
import '../../presentation/all_module/module_two/view/narcissistic_nervous_system.dart';
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
  static const String myPersonalStoryRoute="/myPersonalStoryScreen";
  static const String moduleTwoScreenRoute="/moduleTwoScreen";
  static const String whatNarcissismRoute="/whatNarcissism";
  static const String selfTestScreenRoute="/selfTestRoute";
  static const String questionScreenRoute="/questionScreen";
  static const String evaluationScreenRoute="/evaluationScreen";
  static const String narcissismType="/narcissismType";
  static const String importantTermsRoute="/importantTerms";
  static const String cycleNarcissisticRoute="/cycleNarcissistic";
  static const String psychologicalAbuseRoute="/psychologicalAbuse";
  static const String narcissisticAbuse="/narcissisticAbuse";
  static const String narcissisticNervousRoute="/narcissisticNervous";
  static const String moduleThreeRoute="/moduleThreeRoute";
  static const String realityCheckRoute = "/realityCheck";
  static const String defineNoGoRoute = "/defineNoGoRoute";
  static const String activateSupportRoute = "/activateSupportRoute";


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
        case Routes.myPersonalStoryRoute:
        return MaterialPageRoute(builder: (_)=> MyPersonalStory());
        case Routes.moduleTwoScreenRoute:
        return MaterialPageRoute(builder: (_)=> ModuleTwoScreen());
        case Routes.whatNarcissismRoute:
        return MaterialPageRoute(builder: (_)=> WhatNarcissism());
      case Routes.selfTestScreenRoute:
        return MaterialPageRoute(builder: (_)=> SelfTestScreen());
      case Routes.questionScreenRoute:
        return MaterialPageRoute(builder: (_)=> QuestionScreen());
        case Routes.evaluationScreenRoute:
        return MaterialPageRoute(builder: (_)=> EvaluationScreen());
        case Routes.narcissismType:
        return MaterialPageRoute(builder: (_)=> NarcissismType());
        case Routes.importantTermsRoute:
        return MaterialPageRoute(builder: (_)=> ImportantTerms());
        case Routes.cycleNarcissisticRoute:
        return MaterialPageRoute(builder: (_)=> CycleNarcissisticRelation());
        case Routes.psychologicalAbuseRoute:
        return MaterialPageRoute(builder: (_)=> PsychologicalAbuseForm());
      case Routes.narcissisticAbuse:
        return MaterialPageRoute(builder: (_)=> NarcissisticAbuse());
     case Routes.narcissisticNervousRoute:
        return MaterialPageRoute(builder: (_)=> NarcissisticNervousSystem());
      case Routes.moduleThreeRoute:
          return MaterialPageRoute(builder: (_)=> ModuleThreeScreen());
     case Routes.realityCheckRoute:
          return MaterialPageRoute(builder: (_)=> RealityCheckScreen());
     case Routes.defineNoGoRoute:
          return MaterialPageRoute(builder: (_)=> DefineNoGoScreen());
     case Routes.activateSupportRoute:
          return MaterialPageRoute(builder: (_)=> ActivateSupportEnvironment());

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