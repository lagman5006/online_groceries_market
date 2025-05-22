import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_groceries_market/utils/resource_colors.dart';

class Prodacts extends StatelessWidget {
  const Prodacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              spacing: 5,
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios_outlined),
                    Spacer(),
                    SvgPicture.asset("assets/svgs/Vector.svg"),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  width: 400,
                  height: 360,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.asset("assets/images/applehd.png"),
                ),
                Row(
                  children: [
                    Text("Naturel Red Apple"),
                    Spacer(),
                    Icon(Icons.favorite_outline),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "1kg, Price",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.remove),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Resource_colors.grayColor.withOpacity(0.1),
                      ),
                      child: Text("1"),
                    ),
                    Icon(Icons.add, color: Resource_colors.mainColor),
                    Spacer(),
                    Text(
                      "\$4.99",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Divider(color: Colors.black.withOpacity(0.1)),
                Row(
                  children: [
                    Text(
                      "Product Detail",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Apples Are Nutritious Apples May Be Good For Weight Loss \n"
                      "Apples May Be Good For Your Heart. As Part Of A Heaaltful\n"
                      "And Varied Diet",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                Divider(color: Colors.black.withOpacity(0.1)),
                Row(
                  spacing: 10,
                  children: [
                    Text("Nutritions"),
                    Spacer(),
                    Container(
                      width: 30,
                      height: 15,
                      color: Resource_colors.grayColor.withOpacity(0.1),

                      child: Text(
                        "100gr",
                        style: TextStyle(
                          fontSize: 7,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined, size: 20),
                  ],
                ),
                Divider(color: Colors.black.withOpacity(0.1)),
                Row(
                  spacing: 5,
                  children: [
                    Text("Review"),
                    Spacer(),
                    SvgPicture.asset("assets/svgs/start.svg"),
                    SvgPicture.asset("assets/svgs/start.svg"),
                    SvgPicture.asset("assets/svgs/start.svg"),
                    SvgPicture.asset("assets/svgs/start.svg"),
                    SvgPicture.asset("assets/svgs/start.svg"),
                    Icon(Icons.arrow_forward_ios_outlined, size: 20),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  width: 320,
                  height: 60,
                  decoration: BoxDecoration(color: Resource_colors.mainColor,borderRadius: BorderRadius.circular(15)),
                  child: Text("Add To Basket",style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
