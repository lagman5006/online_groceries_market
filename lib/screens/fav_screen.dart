import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    "Favorurite",
                    style: TextStyle(fontSize: 20, fontFamily: "Gilroy"),
                  ),
                ],
              ),
              Divider(),
              rows(
                "assets/images/sprite.png",
                "Cprite Can",
                "325ml,Price",
                "\$1.50",
              ),
              Divider(),
              rows(
                "assets/images/coke.png",
                "Diet Coke",
                "355ml,Price",
                "\$1.99",
              ),
              Divider(),
              rows(
                "assets/images/qzilsuv.png",
                "Apple & Grape Juice",
                "2L,"
                    "Price",
                "\$15.50",
              ),
              Divider(),
              rows(
                "assets/images/cola.png",
                "Coca Cola Can",
                "325ml,Price",
                "\$4.99",
              ),
              Divider(),
              rows(
                "assets/images/pepsi.png",
                "Pepsi Casn",
                "330ml,Price",
                "\$1.50",
              ),
              SizedBox(height: 35),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: 364,
                height: 67,
                decoration: BoxDecoration(
                  color: Color(0xff53b175),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Add All To Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Gilroy",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Row rows(String water, String name, String ml, String price) {
  return Row(
    children: [
      Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
      SizedBox(width: 20),
      Image.asset(water, width: 30, height: 54),
      SizedBox(width: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: TextStyle(fontSize: 16, fontFamily: "Gilroy")),
          Text(
            ml,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff7c7c7c),
              fontFamily: "Gilroy",
            ),
          ),
        ],
      ),
      Spacer(),
      Text(price),
      Icon(Icons.keyboard_arrow_right),
    ],
  );
}
