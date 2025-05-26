import 'package:poshan/components/default_button.dart';
import 'package:poshan/constants.dart';
import 'package:poshan/screens/sign_in/sign_in_screen.dart';
import 'package:poshan/size_configure.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/components/default_button.dart';
//import 'package:flutter_application_1/components/default_button.dart';
//import 'package:flutter_application_1/constants.dart';
//import 'package:flutter_application_1/screens/components/splash_content.dart';
//import 'package:flutter_application_1/screens/sign_in/sign_in_screen.dart';
//import 'package:flutter_application_1/size_configure.dart';
//this is the best pratice
import '../components/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Food Norms Under Mid-Day Meal.",
      "image": "assets/images/PastedGraphic-5.png"
    },
    {
      "text": "Different Types of food or taken by student.",
      "image": "assets/images/mid.png"
    },
    {
      "text": "The Egg also distrubited to student.",
      "image": "assets/images/discover .png"
    },
    {
      "text": "They Are Maintained By Clean And Hygiene.",
      "image": "assets/images/cook.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
