import 'package:poshan/constants.dart';
import 'package:poshan/screens/sign_up/components/sign_up_form.dart';
import 'package:poshan/size_configure.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_application_1/constants.dart';
//import 'package:flutter_application_1/screens/sign_up/components/sign_up_form.dart';
//import 'package:flutter_application_1/size_configure.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Register Acoccunt",
                style: headingStyle,
              ),
              Text(
                "Complete your details \nFill your UDISE Code and Register Mobile Number",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.065,
              ), //8% percentage of total height
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),

              Text(
                "By continuing your confirm that you agree with our ",
                style: TextStyle(fontSize: getProportionateScreenWidth(13)),
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                //onTap: () => Navigator.popAndPushNamed(context, ""),
                child: Text(
                  "Terms&Conditions",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                    color: kPrimaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
