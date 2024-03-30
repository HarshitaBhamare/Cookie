import 'dart:ui';

import 'package:cookie_application/components/custom_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:flutter_animate/flutter_animate.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => FrontPageState();
}

class FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var color = Theme.of(context).colorScheme;
    return Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(43, 47, 59, 1),
                    Color.fromRGBO(43, 46, 53, 1),
                    Color.fromRGBO(41, 42, 43, 1),
                    Color.fromRGBO(41, 41, 43, 1),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height / 15,
                  ),
                  Container(
                    // color: Colors.amber,
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width / 22,
                        ),
                        Container(
                          height: size.height / 13,
                          width: size.width / 6,
                          decoration: BoxDecoration(
                              color: color.onBackground,
                              borderRadius: BorderRadius.circular(1000)),
                          child: Image.asset(
                            'assets/images/cookie.png',
                            scale: size.height / 300,
                          ),
                        ),
                        SizedBox(
                          width: size.width / 25,
                        ),
                        Container(
                          child: Text(
                            "Harshita\nBhamare",
                            style: TextStyle(
                              fontFamily: 'Outfit',
                              fontSize: size.height / 50,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width / 5,
                        ),
                        Container(
                          height: size.height / 6.5,
                          width: size.width / 3,
                          decoration: BoxDecoration(
                              // color: color.primary,
                              borderRadius: BorderRadius.circular(18)),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: size.height / 9,
                                width: size.width / 4,
                                decoration: BoxDecoration(
                                  color: color.onBackground,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: size.height / 30),
                                    Text(
                                      "6",
                                      style: TextStyle(
                                        color: color.background,
                                        fontSize: size.height / 35,
                                        fontFamily: 'Outfit',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    // SizedBox(height: size.height / 0),
                                    Text(
                                      "Produts",
                                      style: TextStyle(
                                          color: color.background,
                                          fontSize: size.height / 55,
                                          fontFamily: 'Outfit'),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: size.height / 10,
                                child: Badge(
                                  alignment: Alignment(.9, -.7),
                                  child: Container(
                                    height: size.height / 20,
                                    width: size.width / 9,
                                    decoration: BoxDecoration(
                                      color: color
                                          .background, // Assuming this is black
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Icon(Icons.shopping_bag_outlined),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    // color: Colors.amber,
                    width: size.width / 1.12,
                    child: Text(
                      "Cookies",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: color.onBackground,
                          fontSize: size.height / 25,
                          fontFamily: 'Outfit'),
                    ),
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      // color: Colors.green,
                      width: size.width / 1.12,
                      child: Row(
                        children: [
                          Text(
                            "Premium",
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: color.primary,
                                fontSize: size.height / 29,
                                fontFamily: 'Outfit'),
                          ),
                          SizedBox(width: size.width / 2.5),
                          Text(
                            "See more",
                            style: TextStyle(
                                color: color.primary,
                                fontSize: size.height / 59,
                                fontFamily: 'Outfit'),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: size.height / 100,
                  ),
                  Container(
                    width: size.width,
                    height: size.height / 3.2,
                    // color: Colors.amber,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                              width: size.width / 2,
                              child: CustomTileComponent()),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 50,
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      width: size.width / 1.12,
                      child: Row(
                        children: [
                          Text(
                            "Offers",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: color.onBackground,
                                fontSize: size.height / 25,
                                fontFamily: 'Outfit'),
                          ),
                          SizedBox(width: size.width / 2.5),
                          Text(
                            "See more",
                            style: TextStyle(
                                color: color.primary,
                                fontSize: size.height / 59,
                                fontFamily: 'Outfit'),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: size.height / 60,
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(81, 87, 105, 67),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(80),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                offset: const Offset(0, 2),
                                blurRadius: 8,
                                spreadRadius: 2,
                              )
                            ]),
                        width: size.width / 1.1,
                        height: size.height / 7,
                        child: Row(
                          children: [
                            SizedBox(width: size.width / 30),
                            Image.asset(
                              'assets/images/cookie.png',
                              scale: size.height / 350,
                            ),
                            SizedBox(width: size.width / 30),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Double\nChocolate",
                                  style: TextStyle(
                                      color: color.onBackground,
                                      fontSize: size.height / 50,
                                      fontFamily: 'Outfit'),
                                ),
                                SizedBox(
                                    // width: size.width / 3,
                                    child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/crown.png',
                                      scale: size.height / 30,
                                      color: color.primary,
                                    ),
                                    SizedBox(
                                      width: size.width / 60,
                                    ),
                                    Text(
                                      "PREMIUM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: color.primary,
                                          fontSize: size.height / 60,
                                          fontFamily: 'Outfit'),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                            SizedBox(width: size.width / 15),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: size.height / 12),
                                SizedBox(
                                  child: Text(
                                    "20 USD",
                                    style: TextStyle(
                                        color: color.onBackground,
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.height / 50,
                                        fontFamily: 'Outfit'),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          right: size.width / 300,
                          bottom: size.height / 300,
                          child: Container(
                              child: Icon(Icons.arrow_forward),
                              height: size.height / 20,
                              width: size.width / 9,
                              decoration: BoxDecoration(
                                color:
                                    color.background, // Assuming this is black
                                borderRadius: BorderRadius.circular(100),
                              )))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(41, 41, 43, 1),
        bottomNavigationBar: Container(
          height: size.height / 13,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 20, 20, 22),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: GNav(
              // rippleColor: Colors.grey[300], // Effect color
              // hoverColor: Colors.grey[100], // Hover color
              gap: 8, // Gap between icon and text
              color: Colors.grey[800], // Icon color
              activeColor: color.onBackground, // Active icon color
              iconSize: 24, // Icon size
              tabBackgroundColor: color.background, // Tab background color
              padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5), // Padding for the navigation bar
              duration: Duration(milliseconds: 800), // Animation duration
              tabMargin: EdgeInsets.symmetric(horizontal: 10),
              tabs: [
                GButton(
                    icon: Icons.home,
                    text: 'Home',
                    backgroundColor: color.secondary,
                    iconColor: color.primary,
                    textStyle: TextStyle(
                      fontFamily: 'Oufit',
                      color: color.onBackground,
                    )),
                GButton(
                    icon: Icons.search,
                    text: 'Search',
                    backgroundColor: color.secondary,
                    iconColor: color.primary,
                    textStyle: TextStyle(
                      fontFamily: 'Oufit',
                      color: color.onBackground,
                    )),
                GButton(
                    icon: Icons.favorite,
                    text: 'Likes',
                    backgroundColor: color.secondary,
                    iconColor: color.primary,
                    textStyle: TextStyle(
                      fontFamily: 'Oufit',
                      color: color.onBackground,
                    )),
              ],
            ),
          ),
        )

        // .animate().fade(
        //     delay: Duration(milliseconds: 1700),
        //     duration: Duration(milliseconds: 500)),
        );
  }
}
