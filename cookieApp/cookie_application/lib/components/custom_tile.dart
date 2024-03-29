import 'package:flutter/material.dart';

class CustomTileComponent extends StatelessWidget {
  const CustomTileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var color = Theme.of(context).colorScheme;
    return Expanded(
        child: Container(
      // width: size.width / ,
      height: size.height / 3.3,
      // decoration: BoxDecoration(color: color.onBackground),
      child: Stack(
        alignment: Alignment(0, 0.8),
        children: [
          Container(
            width: size.width / 2.5,
            height: size.height / 5.7,
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
                    offset: const Offset(
                      0,
                      2,
                    ),
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ]),
            child: Column(
              children: [
                SizedBox(height: size.height / 20),
                SizedBox(
                  width: size.width / 3,
                  child: Text(
                    "Chocolate\nchips",
                    style: TextStyle(
                        color: color.onBackground,
                        fontSize: size.height / 50,
                        fontFamily: 'Outfit'),
                  ),
                ),
                SizedBox(
                    width: size.width / 3,
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
                SizedBox(
                  width: size.width / 3,
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
            ),
          ),
          Positioned(
              bottom: size.height / 7,
              child: Container(
                width: size.width / 1,
                height: size.height / 7,
                child: Container(
                  child: Image.asset(
                    'assets/images/cookie.png',
                  ),
                ),
              )),
          Positioned(
              right: size.width / 30,
              bottom: size.height / 90,
              child: Container(
                  child: Icon(Icons.arrow_forward),
                  height: size.height / 20,
                  width: size.width / 9,
                  decoration: BoxDecoration(
                    color: color.background, // Assuming this is black
                    borderRadius: BorderRadius.circular(100),
                  )))
        ],
      ),
    ));
  }
}
