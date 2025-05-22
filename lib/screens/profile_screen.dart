import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              spacing: 20,
              children: [
                SizedBox(width: 10),
                Image.asset("assets/images/profile.png",width: 60,height: 60,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: 20,
                      children: [
                        Text("Afsar Hossen"),
                        SvgPicture.asset("assets/svgs/Vector.svg"),
                      ],
                    ),

                    Text("Imshuvo97@gmail.com"),
                  ],
                ),
              ],
            ),
            Divider(),
            Rows("assets/svgs/Orders icon.svg", "Orders"),
            Divider(),
            Rows("assets/svgs/My Details icon.svg", "My Detalis"),
            Divider(),
            Rows("assets/svgs/Delicery address.svg", "Delivery Address"),
            Divider(),
            Rows("assets/svgs/Vector icon.svg", "Payment Methods"),
            Divider(),
            Rows("assets/svgs/Promo Cord icon.svg", "Promo Card"),
            Divider(),
            Rows("assets/svgs/Bell icon.svg", "Orders"),
            Divider(),
            Rows("assets/svgs/help icon.svg", "Help"),
            Divider(),
            Rows("assets/svgs/about icon.svg", "About"),
            SizedBox(height: 20),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: 364,
              height: 67,
              decoration: BoxDecoration(
                color: Color(0xfff2f3f2),
                borderRadius: BorderRadius.circular(19),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/svgs/Group 6892.svg"),
                  SizedBox(width: 100),
                  Text("Log Out"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Row Rows(String a, String b) {
  return Row(
    spacing: 10,
    children: [
      Padding(padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10)),
      SvgPicture.asset(a),
      Text(b),
      Spacer(),
      Icon(Icons.keyboard_arrow_right),
    ],
  );
}

