import 'package:flutter/material.dart';
import 'package:poshan/components/default_button.dart';
import 'package:poshan/constants.dart';
import 'package:poshan/screens/home/attendance/attendance_screen.dart';

import '../../../size_configure.dart';

class HomeFormScreen extends StatefulWidget {
  @override
  State<HomeFormScreen> createState() => _HomeFormScreenState();
}

class _HomeFormScreenState extends State<HomeFormScreen> {
  String valueChoose;
  List listItem = ["Pre-Primary", "Primary", "Upper Primary"];

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(40)),
        child: SizedBox(
          child: Column(
            children: [
              buildDropDownformField(),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              DefaultButton(
                text: "Attendace",
                press: () {
                  Navigator.pushNamed(context, AttendanceScreen.routeName);
                },
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

  SizedBox buildDropDownformField() {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenHeight(20)),
          decoration: BoxDecoration(
              border: Border.all(color: kTextColor),
              borderRadius: BorderRadius.circular(15)),
          child: DropdownButton(
            hint: Text("Select the categorie:"),
            iconSize: 26,
            isExpanded: true,
            underline: SizedBox(),
            value: valueChoose,
            onChanged: (newValue) {
              setState(
                () {
                  valueChoose = newValue;
                },
              );
            },
            items: listItem.map((valueItem) {
              return DropdownMenuItem(
                value: valueItem,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenHeight(20)),
                  child: Text(
                    valueItem,
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(20),
                        color: kPrimaryColor),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
