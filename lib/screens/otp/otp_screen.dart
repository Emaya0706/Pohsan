import 'package:flutter/material.dart';
import 'package:poshan/constants.dart';
import 'package:poshan/screens/otp/components/body.dart';
//import 'package:poshan/screens/complete_profile/components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "OTP Verification",
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
      ),
      body: Body(),
    );
  }
}
