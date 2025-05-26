import 'package:poshan/components/default_button.dart';
import 'package:poshan/screens/home/home_screen.dart';
import 'package:poshan/screens/sign_in/components/sign_form.dart';
import 'package:poshan/size_configure.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/components/default_button.dart';
//import 'package:flutter_application_1/constants.dart';
//import 'package:flutter_application_1/size_configure.dart';
//import 'package:flutter_application_1/theme.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          //height: SizeConfig.screenHeight * 0.6,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.w800,
            color: Colors.black87,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenHeight * 0.4,
          child: DefaultButton(
            text: "Back to Home",
            press: () {
              KeyboardUtil.hideKeyboard(context);
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
