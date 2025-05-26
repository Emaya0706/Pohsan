import 'package:flutter/material.dart';
import 'package:poshan/screens/home/attendance/components/Attendance_form_screen.dart';

import '../../../../size_configure.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Goverment.Hr.Sec.school \nAnna nagar,namakkal-637001",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportionateScreenWidth(19),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.07),
          AttendanceFormScreen()
        ],
      ),
    );
  }
}
