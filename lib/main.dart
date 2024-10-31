import 'package:flutter/material.dart';
import 'home.dart'; // Import your Home page

void main() {
  runApp(AquaApp());
}

class AquaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/latar.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 212,
            left: 0,
            right: 0,
            child: Image.asset(
              'images/Latar_Aqua.png',
              height: 500,
              fit: BoxFit.contain,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 0), // Adjust top padding as needed
              child: Image.asset(
                'images/logo.png',
                width: 335,
              ),
            ),
          ),
          Positioned(
            top: 405, // Adjust as needed
            left: 0,
            right: 0,
            child: Image.asset(
              'images/Aqua.png',
              height: 315,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 420,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(), // Ensure 'Home' is defined in home.dart
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(180),
                  ),
                  padding: EdgeInsets.all(10),
                  minimumSize: Size(90, 50),
                  backgroundColor: Color(0xFFFFFFFF),
                ),
                child: CustomArrow(),
              ),
            ),
          ),
          Positioned(
            top: 240,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
                children: [
                  Text(
                    'KEBAIKAN',
                    style: TextStyle(
                      fontSize: 45,
                      height: 0.9,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat', // Ensure this font is in your pubspec.yaml
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'BERAWAL',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'DARI SINI',
                    style: TextStyle(
                      fontSize: 30,
                      height: 0.8,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Terpercaya lebih',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'dari 45 tahun',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform.translate(
          offset: Offset(8, 0),
          child: Container(
            width: 4,
            height: 2.5,
            color: Color(0xFF4E5355),
          ),
        ),
        SizedBox(width: 1),
        Icon(
          Icons.arrow_forward,
          size: 35,
          color: Color(0xFF4E5355),
        ),
      ],
    );
  }
}
