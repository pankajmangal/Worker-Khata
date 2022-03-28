import 'package:flutter/material.dart';
import 'package:worker_khata/route/route_constant.dart';
import 'package:worker_khata/ui/auth/login_screen.dart';
import 'package:worker_khata/ui/auth/user_selection_screen.dart';
import 'package:worker_khata/ui/intro/intro_screen.dart';
import 'package:worker_khata/ui/language/language_screen.dart';
import 'package:worker_khata/ui/splash/splash_screen.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case splashLaunch:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case introLaunch:
        return MaterialPageRoute(builder: (_) => const IntroSliderScreen());

      case languageLaunch:
        return MaterialPageRoute(builder: (_) => const LanguageScreen());

      case userSelectionLaunch:
        return MaterialPageRoute(builder: (_) => const UserSelectionScreen());

      case loginLaunch:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      /*

      case register:
        return MaterialPageRoute(builder: (_) => RegisterPage());

      case forgot:
        return MaterialPageRoute(builder: (_) => ForgotPassPage());

      case otpVerify://otpVerifyUpdate
        var argument = settings.arguments as RegisterUserData;
        return MaterialPageRoute(builder: (_) => VerifyOtpPage(argument));*/

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}