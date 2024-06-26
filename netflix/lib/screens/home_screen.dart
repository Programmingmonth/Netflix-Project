import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                _buildPage(
                  image: 'assets/images/netflix_logo.png',
                  title: 'Unlimited films, TV programmes & more',
                  subtitle: 'Watch anywhere. Cancel at any time.',
                ),
                _buildPage(
                  image: 'assets/images/netflix_logo.png',
                  title: 'Download and watch offline',
                  subtitle: 'Always have something to watch offline.',
                ),
                _buildPage(
                  image: 'assets/images/netflix_logo.png',
                  title: 'No annoying contracts',
                  subtitle: 'Join today, cancel anytime.',
                ),
                _buildPage(
                  image: 'assets/images/netflix_logo.png',
                  title: 'Watch everywhere',
                  subtitle: 'Stream on your phone, tablet, laptop, and TV.',
                ),
              ],
            ),
            Positioned(
              left: 16,
              top: 20,
              child: Image.asset(
                'assets/images/netflix_logo.png',
                height: 50,
              ),
            ),
            Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: 10,
                    width: _currentPage == index ? 10 : 10,
                    decoration: BoxDecoration(
                      color: _currentPage == index ? Colors.white : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  );
                }),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 16,
              right: 16,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5, // Adjust button width
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    onPressed: () {
                      // Your code for button press
                    },
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage({String? image, String? title, String? subtitle}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(flex: 3),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            title!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            subtitle!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
        Spacer(flex: 2),
      ],
    );
  }
}
