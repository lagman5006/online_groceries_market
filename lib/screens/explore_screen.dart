import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_groceries_market/screens/products.dart';
import 'package:online_groceries_market/utils/resource_media.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 265,
                    height: 46,
                    decoration: BoxDecoration(
                      color: Color(0XFFF2F3F2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.search),
                        Text("Egg"),
                        Spacer(),
                        Icon(
                          Icons.cancel,
                          color: Colors.black.withOpacity(0.2),
                          size: 20,
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  SvgPicture.asset("assets/svgs_explorer/filter.svg"),
                ],
              ),
              Row(
                children: [
                  containers(
                    ResourceMedia.eggsImage,
                    "Egg chicken Red",
                    "4pcs, Price",
                    "\$1.99",
                    "assets/svgs/plus.svg",context,
                  ),
                  containers(
                    ResourceMedia.whiteEggs,
                    "Egg chicken White",
                    "180g, Price",
                    "\$1.50",
                    "assets/svgs/plus.svg",context,
                  ),
                ],
              ),
              Row(
                children: [
                  containers(
                    ResourceMedia.pastaImage,
                    "Egg Pasta           "
                        "     ",
                    "30gm, Price",
                    "\$15.99",
                    "assets/svgs/plus.svg",context,
                  ),
                  containers(
                    ResourceMedia.noodlesImage,
                    "Egg Noddles       "
                        "    ",
                    "2L, Price",
                    "\$15.99",
                    "assets/svgs/plus.svg",context,
                  ),
                ],
              ),
              Row(
                children: [
                  containers(
                    ResourceMedia.mayonnaiseImage,
                    "Mayonnais Eggless",
                    "2pcs, Price",
                    "\$5.90",
                    "assets/svgs/plus.svg",context,
                  ),
                  containers(
                    ResourceMedia.noodles2Image,
                    "Egg Noodles      "
                        "         ",
                    "1pcs, Price",
                    "\$10.00",
                    "assets/svgs/plus.svg",context,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Container containers(
  String picture,
  String firstText,
  String secondText,
  String price,
  String plus,
    BuildContext context
) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    width: 130,
    height: 175,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.black.withOpacity(0.2)),
    ),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(children: [Image.asset(picture, width: 80, height: 80)]),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              firstText,
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            ),
            Text(secondText, style: TextStyle(fontSize: 10)),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(width: 5),
            Text(
              price,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Prodacts()));
                  print("ishlayapti");
                },
                child: SvgPicture.asset(plus, width: 30, height: 30)),
            SizedBox(width: 15),
          ],
        ),
      ],
    ),
  );
}
