// @dart=2.9s
//import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:poshan/routs.dart';
import 'package:poshan/screens/splash/splash_screen.dart';
import 'package:poshan/theme.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_application_1/theme.dart';
//import 'package:flutter_application_1/constants.dart';
//import 'package:flutter_application_1/routs.dart';
//import 'package:flutter_application_1/screens/routs.dart';
//import 'package:flutter_application_1/screens/splash/splash_screen.dart';
//import 'package:flutter_application_1/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Poshan',
      theme: theme(),

      //home: SplashScreen(),
      //we  use routes name so that we dont need to remmber the name
      //initialRoute: SplashScreen.routeName,
      //routes: routes,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
