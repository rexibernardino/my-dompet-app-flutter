import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('assets/images/maria.jpg'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Maria',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Name'),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Maria',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Phone Number'),
            const TextField(
              decoration: InputDecoration(
                hintText: '081234567890',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Email'),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Maria@gmail.com',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Password'),
            const TextField(
              decoration: InputDecoration(
                hintText: 'MariaMaria',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Currency'),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Rupiah',
              ),
            ),
            const SizedBox(height: 32.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Aksi saat tombol Save ditekan
                },
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}