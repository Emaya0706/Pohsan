import 'package:poshan/screens/splash/components/body.dart';
import 'package:poshan/size_configure.dart';
import 'package:flutter/material.dart';

//import '../../size_configure.dart';
//import 'package:flutter_application_1/screens/components/body.dart';
//import 'package:flutter_application_1/size_configure.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    //you have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
