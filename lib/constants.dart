import ;
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/size_configure.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  color: Colors.black,
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  height: 1.5,
);

//form error
final RegExp phoneValidatorRegExp = RegExp(r"^([0|\+[0-9]{1,5})?([0-9]{5})$");
final RegExp udiseValidatorRegExp = RegExp(r"^([0|\+[0-9]{1,5})?([0-9]{9})$");
//RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kPhoneNullError = "Please enter yor number";
const String kInvalidNumberError = "Please Enter Valid Number";
const String kShortPassError = " password is too short";
const String kPassNullError = "Please Enter your Password";
const String kMatchPassError = "Passwords  don't Match";
const String kudiseNullError = "Please Enter your UDISE";
const String kInvalidudiseNullError = "Please Enter Valid UDISE";
const String kNameNullError = "Please Enter Full Name";
const String kInvalidotpNullError = "Please valid OTp";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: kTextColor));
}
