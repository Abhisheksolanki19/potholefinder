import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:potholefinder/screens/login_screen.dart';
import 'package:potholefinder/screens/user_home_screen.dart';
import 'package:potholefinder/utlis/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
      width: _width,
      height: _height,
      color: primaryMainColor,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            Image.asset(
              'assets/auth.png',
              height: _height * 0.38,
            ),
            const SizedBox(height: 10),
            const AutoSizeText(
              "Let’s start scouting potholes",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            SizedBox(height: _height * 0.05),
            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: const Padding(
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: primaryMainColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UserHomeScreen(),
                ));
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) => CustomDialog(
                //     title: "Would you like to create a free account?",
                //     description:
                //         "With an account, your scouting will be rewarded and allow you to access from multiple devices.",
                //     primaryButtonText: "Create My Account",
                //     primaryButtonRoute: "/citizenSignup",
                //     secondaryButtonText: "Maybe Later",
                //     secondaryButtonRoute: "/anonymousSignIn",
                //   ),
                // );
              },
            ),
            SizedBox(height: _height * 0.05),
            const Divider(
              thickness: 0.8,
              color: Colors.white,
            ),
            SizedBox(height: _height * 0.05),
            RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: const Padding(
                padding: EdgeInsets.only(
                    top: 10.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: Text(
                  "Municipal Auth",
                  style: TextStyle(
                    color: primaryMainColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed('/signin');
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ));
              },
            )
          ],
        ),
      )),
    ));
  }
}
