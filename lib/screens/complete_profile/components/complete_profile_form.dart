import 'package:flutter/material.dart';
import 'package:poshan/components/custom_surfix_icon.dart';
import 'package:poshan/components/default_button.dart';
import 'package:poshan/components/form_error.dart';
import 'package:poshan/constants.dart';
import 'package:poshan/screens/home/home_screen.dart';
//import 'package:poshan/screens/home/home_screen.dart';
import 'package:poshan/size_configure.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String name;
  bool remember = false;
  String password;
  String confrompassword;
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
          buildNameFormField(),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          buildPasswordFormField(),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          buildConformPasswordFormField(),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          DefaultButton(
            text: "cotinue",
            press: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, HomeScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConformPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confrompassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == confrompassword) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "conform Password",
        hintText: "Re-Enter Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixicon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 7) {
          removeError(error: kShortPassError);
        }

        password = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 7) {
          addError(error: kShortPassError);
          return " ";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "password",
        hintText: "Enter Your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixicon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

// udise number tabel

  TextFormField buildNameFormField() {
    return TextFormField(
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }

        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: " Name",
        hintText: "Enter Your Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixicon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
}
