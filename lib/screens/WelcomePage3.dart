import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/HomePage.dart';
import 'package:line_icons/line_icons.dart';

class WelcomePage3 extends StatelessWidget {
  void navigate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Why Us?",
                style: TextStyle(
                  color: Color.fromRGBO(51, 62, 80, 1.0),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: WelcomeBox(
                  icon: LineIcons.fighterJet,
                  text: "Fast",
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: WelcomeBox(
                  icon: LineIcons.dollarSign,
                  text: "Cheap",
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: WelcomeBox(
                  icon: LineIcons.tasks,
                  text: "Professional",
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => navigate(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(28, 97, 121, 1.0),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeBox extends StatelessWidget {
  final IconData icon;
  final String text;

  WelcomeBox({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 243,
      height: 127,
      decoration: BoxDecoration(
        color: Color.fromRGBO(43, 191, 176, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 24,
              color: Color.fromRGBO(51, 62, 80, 1.0),
            ),
            SizedBox(height: 5),
            Text(
              text,
              style: TextStyle(
                color: Color.fromRGBO(51, 62, 80, 1.0),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
