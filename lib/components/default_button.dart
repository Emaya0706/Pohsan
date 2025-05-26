import 'dart:ffi';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_configure.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(80),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: kPrimaryColor,
        ),
        onPressed: press as Void Function(),
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(25),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
