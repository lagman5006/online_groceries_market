import 'package:flutter/material.dart';
import 'package:online_groceries_market/screens/explore_screen.dart';
import 'package:online_groceries_market/utils/resource_colors.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset("assets/images/carrot.png")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text("Dhaka, Banassre"),
                  ],
                ),
                Container(
                  width: 320,
                  height: 51,
                  decoration: BoxDecoration(
                    color: Resource_colors.grayColor.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    spacing: 10,
                    children: [
                      SizedBox(width: 5),
                      Icon(Icons.search_outlined),
                      Text("Search Store"),
                    ],
                  ),
                ),
                Container(
                  width: 320,
                  height: 110,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFF7E0CA),
                        Color(0xFFFFFDFD),
                        Color(0xFFFFFDFD),
            
                        Color(0xFFE1DACE),
                        Color(0xFFF7E0CA),
                      ],
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/vegtable.png"),
                      SizedBox(width: 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Fresh Vegetables",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Aclonica",
                            ),
                          ),
                          Text(
                            "Get Up To 40% OFF",
                            style: TextStyle(color: Resource_colors.mainColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Exclusive Offer",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: TextStyle(color: Resource_colors.mainColor),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    containers("assets/images/banan.png", 'Organic Bananas', "7pcs, Priceg", "\$ 4.99", "assets/svgs/plus.svg"),
                    containers("assets/images/apples.png", 'Red Apple', "1kg, Priceg", "\$ 4.99", "assets/svgs/plus.svg"),
                  ],
                ),
                Row(
                  children: [
                    containers("assets/images/pepper.png", 'Organic Bananas', "7pcs, Priceg", "\$ 4.99", "assets/svgs/plus.svg"),
                    containers("assets/images/ginger.png", 'Organic Bananas', "7pcs, Priceg", "\$ 4.99", "assets/svgs/plus.svg"),
                  ],
                ),
                Row(
                  children: [
                    containers("assets/images/meat.png", 'Beef Bone', "1kg, Priceg", "\$ 4.99", "assets/svgs/plus.svg"),
                    containers("assets/images/chicken.png", 'Broiler checken', "1kg, Priceg", "\$ 4.99", "assets/svgs/plus.svg"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
