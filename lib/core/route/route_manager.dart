import 'package:anninawyss_o72194b15c03/presentation/auth/welcome/view/welcome_screen.dart';
import 'package:anninawyss_o72194b15c03/presentation/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';

import '../../presentation/bottom_nav/view/bottom_nav_bar_screen.dart';
import '../resource/app_strings.dart';

class Routes{
  static const String splashRoute="/";
  static const String welcomeRoute="/welcomeScreen";


  static const String onBoadingRoute="/onBoading";
  static const String loginRoute="/login";
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