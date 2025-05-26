import 'package:poshan/screens/sign_up/components/body.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/constants.dart';
//import 'package:flutter_application_1/screens/sign_up/components/body.dart';
//import 'package:poshan/screens/sign_up/components/body.dart';

import '../../constants.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
