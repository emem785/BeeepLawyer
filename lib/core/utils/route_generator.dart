import 'package:beep_lawyer_3/presentation/Screens/AppPages/home_screen.dart';
import 'package:beep_lawyer_3/presentation/Screens/AppPages/menu_pages/upgrade_plan.dart';
import 'package:beep_lawyer_3/presentation/Screens/AppPages/menu_pages/upgrade_plan2.dart';
import 'package:beep_lawyer_3/presentation/Screens/AppPages/receive_beep_page.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/Login/Forgot_Password/forgot_password.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/Login/Forgot_Password/forgot_password_five.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/Login/Forgot_Password/forgot_password_four.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/Login/Forgot_Password/forgot_password_three.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/Login/Forgot_Password/forgot_password_two.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/Login/login_one.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/Register/register_five.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/Register/register_four.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/Register/register_one.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/Register/register_three.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/Register/register_two.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/Register/setup_beep/setup_beep_three.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/Register/setup_beep/setup_beep.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/Register/setup_beep/setup_beep_two.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/auth_control.dart';
import 'package:beep_lawyer_3/presentation/Screens/Authentication/splash_screen.dart';
import 'package:beep_lawyer_3/presentation/Screens/MenuPages/profile_pages/change_password_one.dart';
import 'package:beep_lawyer_3/presentation/Screens/MenuPages/profile_pages/change_password_three.dart';
import 'package:beep_lawyer_3/presentation/Screens/MenuPages/profile_pages/change_password_two.dart';
import 'package:beep_lawyer_3/presentation/Screens/MenuPages/profile_pages/profiles_menu.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  RouteFactory generateRoutes() {
    return (settings) {
      final Map<String, dynamic> args = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case '/':
          screen = AuthController();
          break;

        case '/SplashScreen':
          screen = SplashScreen();
          break;

        case '/HomeScreen':
          screen = HomeInitializer();
          break;

        case '/ReceiveBeep':
          screen = ReceiveBeepPage(buddy: args["buddy"]);
          break;
        //Registration Pages

        case '/RegisterOne':
          screen = RegisterOne();
          break;

        case '/RegisterTwo':
          screen = RegisterTwo(
            phone: args["phone"],
          );
          break;

        case '/RegisterThree':
          screen = RegisterThree();
          break;
        case '/RegisterFour':
          screen = RegisterFour();
          break;
        case '/RegisterFive':
          screen = RegisterFive();
          break;

        case '/SetupBeep':
          screen = SetupBeepPage();
          break;

        case '/SetupBeepTwo':
          screen = SetupBeepTwo();
          break;
        case '/SetupBeepThree':
          screen = SetupBeepThree();
          break;

        //Login Pages

        case '/LoginOne':
          screen = LoginOne();
          break;

        //Forgot Password

        case '/ForgotPassword':
          screen = ForgotPassword();
          break;

        case '/ForgotPassword2':
          screen = ForgotPasswordTwo(
            phone: args["phone"],
          );
          break;

        case '/ForgotPassword3':
          screen = ForgotPasswordThree();
          break;

        case '/ForgotPassword4':
          screen = ForgotPasswordFour();
          break;

        case '/ForgotPassword5':
          screen = ForgotPasswordFive();
          break;

        //Menu Pages

        case 'UpgradePlanTwo':
          screen = UpgradePlan2();
          break;

        case 'ChangePasswordOne':
          screen = ChangePasswordOne(
            phone: args["phone"],
          );
          break;

        case 'ChangePasswordTwo':
          screen = ChangePasswordTwo();
          break;
        case 'ChangePasswordThree':
          screen = ChangePasswordThree();
          break;

        case 'UpgradePlan':
          screen = UpgradePlan();
          break;

        case 'ProfileMenu':
          screen = ProfileMenu(
            user: args["user"],
          );
          break;
      }
      return MaterialPageRoute(builder: (context) => screen);
    };
  }
}
