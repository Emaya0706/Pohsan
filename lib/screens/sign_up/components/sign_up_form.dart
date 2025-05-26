import 'package:poshan/components/custom_surfix_icon.dart';
import 'package:poshan/components/default_button.dart';
import 'package:poshan/components/form_error.dart';
import 'package:flutter/material.dart';
//import 'package:poshan/screens/complete_profile/complete_profile_screen.dart';
import 'package:poshan/screens/otp/otp_screen.dart';
//import 'package:flutter_application_1/components/custom_surfix_icon.dart';
//import 'package:flutter_application_1/components/default_button.dart';
//import 'package:flutter_application_1/components/form_error.dart';

import '../../../constants.dart';
import '../../../size_configure.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String udise;
  String phonenumber;
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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFormField(),
          SizedBox(height: getProportionateScreenHeight(50)),
          buildPhoneFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Get OTP",
            press: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, OtpScreen.routeName);
                //go to compelete the profile page
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phonenumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNullError);
        } else if (phoneValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidNumberError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPhoneNullError);

          return "";
        } else if (!phoneValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidNumberError);

          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Phonne Number",
        hintText: "Enter Your Phone Number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixicon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

// udise number tabel

  TextFormField buildFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phonenumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kudiseNullError);
        } else if (udiseValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidudiseNullError);
        }

        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kudiseNullError);

          return "";
        } else if (!udiseValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidudiseNullError);

          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "UDISE Number",
        hintText: "Enter Your UDISE Number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSuffixicon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }
}
