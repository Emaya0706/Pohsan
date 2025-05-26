import 'package:poshan/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/screens/sign_up/sign_up_screen.dart';
//import 'package:flutter_application_1/screens/fo.0gl vkbj lgggggpprgot_password/forgot_password_screen.dart';

import '../constants.dart';
import '../size_configure.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () =>
              Navigator.popAndPushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
