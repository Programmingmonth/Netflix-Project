import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/second_screen.dart';

void main() {
  runApp(NetflixCloneApp());
}

class NetflixCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix Clone',
      home: MainPage(),
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          WelcomeScreen(),
          SecondScreen(),
        ],
      ),
    );
  }
}
