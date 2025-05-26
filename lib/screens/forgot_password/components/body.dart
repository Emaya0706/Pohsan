import 'package:poshan/components/custom_surfix_icon.dart';
import 'package:poshan/components/default_button.dart';
import 'package:poshan/components/form_error.dart';
import 'package:poshan/components/no_account_text.dart';
import 'package:poshan/constants.dart';
import 'package:poshan/screens/forgot_password/password_success_screen/password_success_screen.dart';
import 'package:poshan/size_configure.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/components/custom_surfix_icon.dart';
//import 'package:flutter_application_1/components/default_button.dart';
//import 'package:flutter_application_1/components/form_error.dart';
//import 'package:flutter_application_1/components/no_account_text.dart';
//import 'package:flutter_application_1/screens/login_success/login_success_screen.dart';
//import 'package:flutter_application_1/screens/sign_in/sign_in_screen.dart';
//import 'package:flutter_application_1/constants.dart';
//import 'package:flutter_application_1/size_configure.dart';

//import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your mobile number  \nOTP send your register mobile number",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              ForgotPassFrom(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassFrom extends StatefulWidget {
  @override
  _ForgotPassFromState createState() => _ForgotPassFromState();
}

class _ForgotPassFromState extends State<ForgotPassFrom> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String phonenumber;
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
          TextFormField(
            keyboardType: TextInputType.phone,
            onSaved: (newValue) => phonenumber = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: kPhoneNullError);

                //errors.remove(kPhoneNullError);

              } else if (phoneValidatorRegExp.hasMatch(value))
                removeError(error: kInvalidNumberError);
              //errors.remove(kInvalidNumberError);
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
              labelText: "Phone Number",
              hintText: "Enter Your Number",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixicon(svgIcon: "assets/icons/Phone.svg"),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          FormError(errors: errors),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // if all are valid then go to success screen
                Navigator.popAndPushNamed(
                    context, PasswordSuccessScreen.routeName);
                //do what u want to do
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          NoAccountText(),
        ],
      ),
    );
  }
}
