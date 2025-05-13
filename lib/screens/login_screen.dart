import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Positioned(
                child: Image.asset("assets/images/foods.png")),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Get your groceries\n",
                        style: TextStyle(
                          fontSize: 26,
                          color: Color(0xff030303),
                          fontFamily: "Gilroy",
                        ),
                      ),
                      TextSpan(
                        text: "with nectar",
                        style: TextStyle(
                          fontSize: 26,
                          color: Color(0xff030303),
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            SizedBox(height: 20,),
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.green),
                width: 30,height: 20,child: Center(child: Container(width: 10,height: 10,
                decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),

              ),),
              ),
              SizedBox(width: 8,),
              Text("+880")
            ],),
            Divider(color: Colors.black,thickness: 1,),
            SizedBox(height: 20,),
            Row(children: [
              Padding(padding: EdgeInsets.only(left: 80),),Text("Or connect with social media",style: TextStyle(fontFamily: "Gilroy", color: Colors.black.withOpacity(0.5)),),
            ],),
            SizedBox(height: 20,),
            Positioned(child: Container( margin: EdgeInsetsDirectional.symmetric(horizontal: 25), width: 364
              ,height: 67,decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),
                  color: Color(0xff5383ec)
              ),
            child:Row(
              children: [
               Padding(padding: EdgeInsets.only(left: 60),), Image.asset("assets/images/Group 6795.png",width: 20,height: 20,),
                SizedBox(width: 20,),
                Text("Continue with Google",style: TextStyle(color: Colors.white),),
              ],
            ) ,

            ),
            ),
            SizedBox(height: 20,),
            Positioned(child: Container( margin: EdgeInsetsDirectional.symmetric(horizontal: 25), width: 364
              ,height: 67,decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),
                  color: Color(0xff5383ec)
              ),
              child:Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 60),), Image.asset("assets/images/Vector.png",width: 20,height: 20,),
                  SizedBox(width: 20,),
                  Text("Continue with Facebook",style: TextStyle(color: Colors.white),),
                ],
              ) ,

            ),
            ),

          ]
      ),)
    );
  }
}


