import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/WelcomePage2.dart';

class WelcomePage1 extends StatelessWidget {
  void navigate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage2()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/Logo2.png', width: 350, height: 122.28),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => navigate(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(28, 97, 121, 1.0),
              ),
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
