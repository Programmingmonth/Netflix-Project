import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final Function(int) onNavigate;

  WelcomeScreen({required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset('assets/images/netflix_logo.png', height: 50),
                  Row(
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: Text('PRIVACY', style: TextStyle(color: Colors.white)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('SIGN IN', style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Center(
              child: Column(
                children: <Widget>[
                  Text(
                    'Unlimited films,\nTV programmes\n& more',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Watch anywhere. Cancel at any time.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.circle, size: 10, color: Colors.white),
                      Icon(Icons.circle, size: 10, color: Colors.grey),
                      Icon(Icons.circle, size: 10, color: Colors.grey),
                      Icon(Icons.circle, size: 10, color: Colors.grey),
                    ],
                  ),
                  SizedBox(height: 16), // Add spacing between dots and button
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        onNavigate(1);
                      },
                      child: Text('GET STARTED'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        textStyle: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
