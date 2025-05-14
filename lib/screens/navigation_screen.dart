import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_groceries_market/screens/cart_screen.dart';
import 'package:online_groceries_market/screens/explore_screen.dart';
import 'package:online_groceries_market/screens/fav_screen.dart';
import 'package:online_groceries_market/screens/profile_screen.dart';
import 'package:online_groceries_market/screens/shop_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectectedIndex = 4;

  List<Widget> screens = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (value) {
          log(value.toString());
          setState(() {
            selectectedIndex = value;
          });
        },
        selectedItemColor: Color(0xFF53B175),
        unselectedItemColor: Color(0xFF181725),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: selectectedIndex,
        items: [
          BottomNavigationBarItem(
            label: "Shop",
            icon: SvgPicture.asset(
              "assets/svgs/home.svg",
              color:
                  selectectedIndex == 0 ? Color(0xFF53B175) : Color(0xFF181725),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svgs/explore.svg",
              color:
                  selectectedIndex == 1 ? Color(0xFF53B175) : Color(0xFF181725),
            ),

            label: "Explore",
          ),
          BottomNavigationBarItem(
            label: "Cart",

            icon: SvgPicture.asset(
              "assets/svgs/cart.svg",

              color:
                  selectectedIndex == 2 ? Color(0xFF53B175) : Color(0xFF181725),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svgs/favorite.svg",
              color:
                  selectectedIndex == 3 ? Color(0xFF53B175) : Color(0xFF181725),
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svgs/profile.svg",
              color:
                  selectectedIndex == 4 ? Color(0xFF53B175) : Color(0xFF181725),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
