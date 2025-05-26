import 'package:flutter/material.dart';
import 'package:poshan/constants.dart';
import 'package:poshan/screens/home/attendance/components/body.dart';
//import 'package:poshan/screens/complete_profile/components/body.dart';
import 'package:poshan/size_configure.dart';

class AttendanceScreen extends StatelessWidget {
  static String routeName = "/attendance";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SingleChildScrollView(
          child: Text(
            "Attendance",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
                color: kPrimaryColor),
          ),
        ),
      ),
      body: Body(),
    );
  }
}
