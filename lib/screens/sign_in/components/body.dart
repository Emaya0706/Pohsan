import 'package:poshan/components/no_account_text.dart';
import 'package:poshan/size_configure.dart';
import 'package:flutter/material.dart';
import 'sign_form.dart';
//import 'package:flutter_application_1/components/no_account_text.dart';
//import 'package:flutter_application_1/constants.dart';
//import 'package:flutter_application_1/screens/forgot_password/forgot_password_screen.dart';
//import 'package:flutter_application_1/components/custom_surfix_icon.dart';
//import 'package:flutter_application_1/components/default_button.dart';
//import 'package:flutter_application_1/components/form_error.dart';
//import 'package:flutter_application_1/constants.dart';

//import 'package:flutter_application_1/size_configure.dart';
//import 'package:poshan/components/no_account_text.dart';

//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_application_1/theme.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign  in With Your Register Mobile number And Password ",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                SignForm(),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
