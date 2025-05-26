import 'package:flutter/services.dart';
import 'package:poshan/components/custom_surfix_icon.dart';
import 'package:poshan/components/default_button.dart';
import 'package:poshan/components/form_error.dart';
import 'package:poshan/screens/forgot_password/forgot_password_screen.dart';
import 'package:poshan/screens/login_success/login_success_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/components/custom_surfix_icon.dart';
//import 'package:flutter_application_1/components/default_button.dart';
//import 'package:flutter_application_1/components/form_error.dart';
//import 'package:flutter_application_1/screens/forgot_password/forgot_password_screen.dart';
//import 'package:flutter_application_1/screens/login_success/login_success_screen.dart';
//import 'package:poshan/components/custom_surfix_icon.dart';
//import 'package:poshan/components/default_button.dart';
//import 'package:poshan/components/form_error.dart';
//import 'package:poshan/screens/forgot_password/forgot_password_screen.dart';
//import 'package:poshan/screens/login_success/login_success_screen.dart';

import '../../../constants.dart';
import '../../../size_configure.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String phonenumber;
  String password;
  bool remember = false;
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

  String valueChoose;
  List listItem = ["Headmaster", "Teachers", "Workers"];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildDropDownformField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember Me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forget Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // if all are valid then go to success screen
                KeyboardUtil.hideKeyboard(context);
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          )
        ],
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
                      horizontal: getProportionateScreenHeight(40)),
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

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 7) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 7) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixicon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phonenumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNullError);
        } else if (!phoneValidatorRegExp.hasMatch(value)) {
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
        labelText: "Phone Number",
        hintText: "Enter Your Number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixicon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }
}

class KeyboardUtil {
  static void hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
