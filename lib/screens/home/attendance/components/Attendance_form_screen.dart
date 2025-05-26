import 'package:flutter/material.dart';
import 'package:poshan/components/default_button.dart';

import '../../../../size_configure.dart';

class AttendanceFormScreen extends StatefulWidget {
  @override
  State<AttendanceFormScreen> createState() => _AttendanceFormScreenState();
}

class _AttendanceFormScreenState extends State<AttendanceFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(40)),
        child: SizedBox(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              DefaultButton(
                text: "class= 1 \nStd = A ",
                
                press: () {},
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              DefaultButton(
                text: "Physical Health",
                press: () {},
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              DefaultButton(
                text: "Analytics",
                press: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
