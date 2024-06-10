import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int _currentIndex = 4; // Indeks untuk Settings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Account Setting'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('Maria.jpg'),
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
            Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Maria',
                  contentPadding: EdgeInsets.all(8.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Phone Number'),
            Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: '081234567890',
                  contentPadding: EdgeInsets.all(8.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Email'),
            Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Maria@gmail.com',
                  contentPadding: EdgeInsets.all(8.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Password'),
            Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'MariaMaria',
                  contentPadding: EdgeInsets.all(8.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text('Currency'),
            Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Rupiah',
                  contentPadding: EdgeInsets.all(8.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.4,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.savings),
            label: 'Savings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Saving Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/saving');
              break;
            case 1:
              Navigator.pushNamed(context, '/history');
              break;
            case 2:
              Navigator.pushNamed(context, '/dashboard');
              break;
            case 3:
              Navigator.pushNamed(context, '/saving_plan');
              break;
            case 4:
            // Already on Settings, do nothing
              break;
          }
        },
      ),
    );
  }
}
