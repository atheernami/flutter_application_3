import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  final List<String> boxTexts = [
    "Business solution",
    "Content management",
    "Digital marketing",
    "E-commerce",
    "Game development",
    "Mobile applications",
    "Software development",
    "Web development",
  ];

  final List<IconData> boxIcons = [
    LineIcons.lightbulb,
    LineIcons.pager,
    LineIcons.tablet,
    LineIcons.shoppingCart,
    LineIcons.gamepad,
    LineIcons.mobilePhone,
    LineIcons.terminal,
    LineIcons.desktop,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset('assets/image/Logo.png', width: 91, height: 90),
                  SizedBox(width: 63),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: Color.fromRGBO(51, 62, 80, 1.0),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Services",
                style: TextStyle(
                  color: Color.fromRGBO(51, 62, 80, 1.0),
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: boxTexts.length ~/ 2,
                scrollDirection: Axis.vertical,
                itemBuilder: ((context, index) {
                  final Index1 = index * 2;
                  final Index2 = Index1 + 1;
                  return Row(
                    children: [
                      Expanded(
                        child: Boxes(
                          boxIcons[Index1],
                          boxTexts[Index1],
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Boxes(
                          boxIcons[Index2],
                          boxTexts[Index2],
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Programming languages",
                style: TextStyle(
                  color: Color.fromRGBO(51, 62, 80, 1.0),
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final imageName = 'image${index + 1}.png';
                  return Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/image/$imageName'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: Container(
          color: Color.fromRGBO(43, 191, 176, 1.0),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(28, 97, 121, 1.0),
                ),
                child: Icon(Icons.home, color: Colors.white),
              ),
              Icon(Icons.chat, color: Colors.white),
              Icon(Icons.settings, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }

  Widget Boxes(IconData iconData, String text) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 36,
            color: Color.fromRGBO(51, 62, 80, 1.0),
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(
              color: Color.fromRGBO(51, 62, 80, 1.0),
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
      color: Color.fromRGBO(43, 191, 176, 1.0),
    );
  }
}
