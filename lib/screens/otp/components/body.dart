import 'package:flutter/material.dart';
import 'package:poshan/constants.dart';
import 'package:poshan/screens/otp/components/otp_form.dart';
import 'package:poshan/size_configure.dart';

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
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text("OTP  Verification", style: headingStyle),
              Text("we sent your code to +91 978660****"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  //resend otp code
                },
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will experied in  "),
        TweenAnimationBuilder(
          tween: Tween(begin: 120.0, end: 0),
          duration: Duration(seconds: 120),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}s",
            style: TextStyle(
                color: Colors.red, fontSize: getProportionateScreenWidth(18)),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
