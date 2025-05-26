import 'package:flutter/material.dart';
import 'package:poshan/screens/home/components/body.dart';
import 'package:poshan/screens/home/components/navi_screen.dart';
import 'package:poshan/screens/sign_in/sign_in_screen.dart';

import '../../constants.dart';
import '../../size_configure.dart';
//import 'package:poshan/screens/complete_profile/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SingleChildScrollView(
          child: Text(
            "poshan",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 1,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: kPrimaryColor),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text("poshan"),
              ),
              accountEmail: null,
              accountName: Text("Emaya"),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.03),
            ListTile(
              onTap: () {},
              title: Text(
                "Language",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenHeight(25)),
              ),
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Help",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenHeight(25)),
              ),
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "About",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenHeight(25)),
              ),
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                "Terms & Conditions",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenHeight(25)),
              ),
            ),
            Divider(
              height: 2.0,
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(
                    color: Colors.black,
                    //decoration: TextDecoration.underline,
                    fontSize: getProportionateScreenHeight(25)),
              ),
              onTap: () {
                Navigator.pushNamed(context, SignInScreen.routeName);
              },
            ),
          ],
        ),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
