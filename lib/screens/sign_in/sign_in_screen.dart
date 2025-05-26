import 'package:poshan/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/constants.dart';
//import 'package:flutter_application_1/screens/sign_in/components/body.dart';
//import 'package:flutter_application_1/size_configure.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //3
      //resizeToAvoidBottomInset: false,

      body: Body(),
    );
  }
}
