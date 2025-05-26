import 'package:poshan/constants.dart';
import 'package:poshan/size_configure.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/constants.dart';
//import 'package:flutter_application_1/size_configure.dart';

import 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Forgot Password",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: kPrimaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
