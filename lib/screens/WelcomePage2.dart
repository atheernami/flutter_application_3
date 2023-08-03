import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/WelcomePage3.dart';

class WelcomePage2 extends StatelessWidget {
  void navigate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage3()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/image/Logo.png', width: 91, height: 90),
                  SizedBox(width: 63),
                  Spacer(),
                  TextButton(
                    onPressed: () => navigate(context),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Color.fromRGBO(51, 62, 80, 1.0),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Who PureCode?",
                      style: TextStyle(
                        color: Color.fromRGBO(51, 62, 80, 1.0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 350,
                    height: 201,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(43, 191, 176, 1.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "PureCode is a professional website and application development company that specializes in designing and building custom software solutions for businesses of all sizes.",
                              style: TextStyle(
                                color: Color.fromRGBO(51, 62, 80, 1.0),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 16,
                          right: 16,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            child: Text(
                              'Read more',
                              style: TextStyle(
                                color: Color.fromRGBO(51, 62, 80, 1.0),
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
