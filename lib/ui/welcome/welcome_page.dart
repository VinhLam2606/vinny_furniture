import 'package:flutter/material.dart';

import '../login/login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 120),

                Text(
                  "Welcome to Vinny Furniture",
                  style: const TextStyle(
                    fontSize: 28,
                    color: Color(0xFF6CA0DC),
                    fontFamily: "Lato",
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                Text(
                  "Please login to your account or create new account to continue",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xFF6CA0DC),
                    fontFamily: "Lato",
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 430),

                SizedBox(
                  width: 350,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF6CA0DC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                SizedBox(
                  width: 350,
                  height: 45,
                  child: OutlinedButton(
                    onPressed: () {
                      // TODO: xử lý tạo tài khoản
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Color(0xFF6CA0DC)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Create Account',
                      style: TextStyle(fontSize: 16, color: Color(0xFF6CA0DC)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
