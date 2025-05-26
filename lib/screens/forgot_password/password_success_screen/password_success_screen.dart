import 'package:poshan/constants.dart';
//import 'package:poshan/screens/login_success/components/body.dart';
import 'package:flutter/material.dart';
import 'package:poshan/screens/forgot_password/password_success_screen/body.dart';
//import 'package:flutter_application_1/constants.dart';
//import 'package:flutter_application_1/screens/login_success/components/body.dart';

class PasswordSuccessScreen extends StatelessWidget {
  static String routeName = "/password_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: SizedBox(),
        centerTitle: true,
        title: Text(
          "Password Success",
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
