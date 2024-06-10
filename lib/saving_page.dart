import 'package:flutter/material.dart';

class SavingPage extends StatefulWidget {
  const SavingPage({super.key});

  @override
  _SavingPageState createState() => _SavingPageState();
}

class _SavingPageState extends State<SavingPage> {
  int _currentIndex = 0;

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
        title: const Text('Saving'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.green,
            padding: const EdgeInsets.all(16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Saving',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Spacer(),
                Row(
                  children: [
                    Text(
                      'Rp 1000000',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const ListTile(
            tileColor: Colors.green,
            title: Text(
              'Dana Darurat',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            trailing: Text(
              'Rp 50000',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            tileColor: Colors.green,
            title: Text(
              'Gift',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            trailing: Text(
              'Rp 25000',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            tileColor: Colors.green,
            title: Text(
              'Hiburan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            trailing: Text(
              'Rp 50000',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
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
            // Already on Savings, do nothing
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
              Navigator.pushNamed(context, '/setting');
              break;
          }
        },
      ),
    );
  }
}
