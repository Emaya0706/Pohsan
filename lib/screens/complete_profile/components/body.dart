import 'package:flutter/material.dart';
import 'package:poshan/constants.dart';
import 'package:poshan/screens/complete_profile/components/complete_profile_form.dart';
import 'package:poshan/size_configure.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Complete  Your Profile",
                style: headingStyle,
              ),
              Text(
                "complete your details with Name,Password \n and Confirm Password ",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              CompleteProfileForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
