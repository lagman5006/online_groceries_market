import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_groceries_market/extensions/context_ext.dart';
import 'package:online_groceries_market/screens/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/azizbek.jpg",
            width: context.getScreenWidth(),
            height: context.getScreenHeight(),
            fit: BoxFit.cover,
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: context.getScreenHeight() * 0.4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF0E1727).withOpacity(0),
                    Color(0xFF858585).withOpacity(0.5),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: context.getScreenHeight() * 0.39,
            child: SvgPicture.asset(
              "assets/svgs/logo.svg",
              width: 48,
              height: 56,
            ),
          ),

          Positioned(
            bottom: context.getScreenHeight() * 0.23,
            width: context.getScreenWidth() * 0.62,
            child: Text(
              textAlign: TextAlign.center,
              "Welcome to our store",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: "Gilroy-Bold",
                fontSize: 48,
              ),
            ),
          ),
          Positioned(
            bottom: context.getScreenHeight() * 0.2,
            child: Text(
              textAlign: TextAlign.center,
              "Get your groceries in as fast as one hour",
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                letterSpacing: 0.5,
                fontFamily: "Gilroy-Medium",
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            bottom: context.getScreenHeight() * 0.1,
            left: 30,
            right: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  CupertinoPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF53B175),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: "Gilroy-Regular",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
