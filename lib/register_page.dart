import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Register Your Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32,),
            Image.asset(
              'ImageRegister.png',
              height: 150,
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFE6F0EB),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const TextField(
                style: TextStyle(color: Colors.blueGrey),
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFE6F0EB),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const TextField(
                style: TextStyle(color: Colors.blueGrey),
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFE6F0EB),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const TextField(
                style: TextStyle(color: Colors.blueGrey),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFE6F0EB),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const TextField(
                style: TextStyle(color: Colors.blueGrey),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/dashboard'); // logic register
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 64,
                  vertical: 18,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.green,
              ),
              child: const Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text("Already have account? Login?"),
            ),
          ],
        ),
      ),
    );
  }
}