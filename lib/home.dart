import 'package:flutter/material.dart';
import 'Login.dart';
import 'Regist.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: const Home(), // Memanggil Home widget
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'images/Latar_Login.png', // Background image
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Logo overlay
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'images/logo.png', // Logo image
                width: 250,
                height: 250,
              ),
            ),
          ),
          // Login Button
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            left: 50,
            right: 50,
            child: SizedBox(
              height: 65,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1A529D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          // Register Button
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            left: 50,
            right: 50,
            child: SizedBox(
              height: 65,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Register()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF1A529D), width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          // Subtitle Text
          Positioned(
            top: MediaQuery.of(context).size.height * 0.46,
            left: 0,
            right: 0,
            child: const Text(
              'Kebaikan Alam\nKebaikan Hidup',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
          ),
          // Bottom Image Layer
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'images/Latar_Login_Botol.png',
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          // Bottle Image
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'images/Botol_Login.png',
              width: 400,
              height: 345,
            ),
          ),
        ],
      ),
    );
  }
}
