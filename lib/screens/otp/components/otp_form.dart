import 'package:flutter/material.dart';
import 'package:poshan/components/default_button.dart';
import 'package:poshan/components/form_error.dart';
import 'package:poshan/constants.dart';
import 'package:poshan/screens/complete_profile/complete_profile_screen.dart';
//import 'package:poshan/screens/home/home_screen.dart';
import 'package:poshan/size_configure.dart';

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  final _formKey = GlobalKey<FormState>();
  String otp;

  final List<String> errors = [];
  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;
  FocusNode pin5FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    pin5FocusNode.dispose();
    super.dispose();
  }

  void nextField({String values, FocusNode focusNode}) {
    if (values.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: buildoptFirstFormField(),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: buildotpSecondFormField(),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: buildotpThreeFormField(),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: buildotpFourFormField(),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: buildotpFiveFormField(),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, CompleteProfileScreen.routName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildotpFiveFormField() {
    return TextFormField(
      focusNode: pin5FocusNode,
      obscureText: true,
      keyboardType: TextInputType.number,
      style: TextStyle(fontSize: 24),
      textAlign: TextAlign.center,
      decoration: otpInputDecoration,
      onChanged: (value) {
        pin5FocusNode.unfocus();
        if (value.isNotEmpty) {
          removeError(error: kInvalidotpNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kInvalidotpNullError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildotpFourFormField() {
    return TextFormField(
      focusNode: pin4FocusNode,
      obscureText: true,
      keyboardType: TextInputType.number,
      style: TextStyle(fontSize: 24),
      textAlign: TextAlign.center,
      decoration: otpInputDecoration,
      onChanged: (value) {
        nextField(values: value, focusNode: pin5FocusNode);
        //nextField(values: value, focusNode: pin4FocusNode.dispose());
        if (value.isNotEmpty) {
          removeError(error: kInvalidotpNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kInvalidotpNullError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildotpThreeFormField() {
    return TextFormField(
      focusNode: pin3FocusNode,
      obscureText: true,
      keyboardType: TextInputType.number,
      style: TextStyle(fontSize: 24),
      textAlign: TextAlign.center,
      decoration: otpInputDecoration,
      onChanged: (value) {
        nextField(values: value, focusNode: pin4FocusNode);
        if (value.isNotEmpty) {
          removeError(error: kInvalidotpNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kInvalidotpNullError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildotpSecondFormField() {
    return TextFormField(
      focusNode: pin2FocusNode,
      obscureText: true,
      keyboardType: TextInputType.number,
      style: TextStyle(fontSize: 24),
      textAlign: TextAlign.center,
      decoration: otpInputDecoration,
      onChanged: (value) {
        nextField(values: value, focusNode: pin3FocusNode);
        if (value.isNotEmpty) {
          removeError(error: kInvalidotpNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kInvalidotpNullError);
          return "";
        }
        return null;
      },
    );
  }

  TextFormField buildoptFirstFormField() {
    return TextFormField(
        autofocus: true,
        obscureText: true,
        keyboardType: TextInputType.number,
        onSaved: (newValue) => otp = newValue,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
        decoration: otpInputDecoration,
        onChanged: (value) {
          //also you need to store value
          nextField(values: value, focusNode: pin2FocusNode);
          if (value.isNotEmpty) {
            removeError(error: kInvalidotpNullError);
          }
          return null;
        },
        validator: (value) {
          if (value.isEmpty) {
            addError(error: kInvalidotpNullError);
            return "";
          }
          return null;
        });
  }
}
