import 'package:flutter/material.dart';
import 'package:poshan/constants.dart';
import 'package:poshan/screens/complete_profile/components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routName = "/complete_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(color: kPrimaryColor),
        ),
      ),
      body: Body(),
    );
  }
}
