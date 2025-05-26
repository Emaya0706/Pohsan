import 'package:flutter/widgets.dart';
import 'package:poshan/screens/complete_profile/complete_profile_screen.dart';
import 'package:poshan/screens/forgot_password/forgot_password_screen.dart';
import 'package:poshan/screens/forgot_password/password_success_screen/password_success_screen.dart';
import 'package:poshan/screens/home/attendance/attendance_screen.dart';
import 'package:poshan/screens/home/home_screen.dart';
//import 'package:poshan/screens/home/home_screen.dart';
import 'package:poshan/screens/login_success/login_success_screen.dart';
import 'package:poshan/screens/otp/otp_screen.dart';
import 'package:poshan/screens/sign_in/sign_in_screen.dart';
import 'package:poshan/screens/sign_up/sign_up_screen.dart';
import 'package:poshan/screens/splash/splash_screen.dart';

//we use name route
//all our routes will be avaliable here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  PasswordSuccessScreen.routeName: (context) => PasswordSuccessScreen(),
  CompleteProfileScreen.routName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  AttendanceScreen.routeName: (context) => AttendanceScreen(),
};
