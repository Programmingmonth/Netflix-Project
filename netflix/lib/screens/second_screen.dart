import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final Function(int) onNavigate;

  SecondScreen({required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
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
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildMovieCard('assets/images/LittleBabyBumsGoBuster.jpg'),
                  _buildMovieCard('assets/images/Extraction.jpg'),
                  _buildMovieCard('assets/images/BossBaby.jpg'),
                ],
              ),
            ),
            Icon(Icons.download, color: Colors.white, size: 40),
            SizedBox(height: 16),
            Text(
              'Download and watch offline',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Always have something to watch offline.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16), // Add spacing between text and dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.circle, size: 10, color: Colors.grey),
                Icon(Icons.circle, size: 10, color: Colors.white),
                Icon(Icons.circle, size: 10, color: Colors.grey),
                Icon(Icons.circle, size: 10, color: Colors.grey),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    onNavigate(0);
                  },
                  child: Text('GET STARTED'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    textStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildMovieCard(String imagePath) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.all(8),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.7),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.play_arrow, color: Colors.white),
        ),
      ),
    );
  }
}
