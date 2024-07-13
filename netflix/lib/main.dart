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
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pageController = PageController();

  void _navigateToPage(int pageIndex) {
    _pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          WelcomeScreen(onNavigate: _navigateToPage),
          SecondScreen(onNavigate: _navigateToPage),
        ],
      ),
    );
  }
}
