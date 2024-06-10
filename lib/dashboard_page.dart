import 'package:flutter/material.dart';
import 'saving_page.dart';
import 'history_page.dart';
import 'saving_plan_page.dart';
import 'setting_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello, Maria',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 24.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('Maria.jpg'), // Replace with your image URL
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MyDompet',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Rp 25,520',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26.0,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman saving_page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SavingPage()),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Spending',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        CustomPaint(
                          painter: SpendingChartPainter(),
                          size: const Size(double.infinity, 200),
                        ),
                        const Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('JAN'),
                              Text('FEB'),
                              Text('MAR'),
                              Text('JUN'),
                              Text('JUL'),
                              Text('AUG'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Transaction',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigasi ke halaman history_page.dart
                          Navigator.pushNamed(context, '/history');
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Card(
                    elevation: 4.0,
                    child: ListTile(
                      leading: Icon(Icons.shopping_bag),
                      title: Text('Nike Air Max 2090'),
                      subtitle: Text('15 Aug 2020'),
                      trailing: Text(
                        '-\$243.00',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Card(
                    elevation: 4.0,
                    child: ListTile(
                      leading: Icon(Icons.attach_money),
                      title: Text('Pemasukan'),
                      subtitle: Text('15 Aug 2020'),
                      trailing: Text(
                        '+\$700.00',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.savings,
                color: Colors.blueGrey),
            label: 'Savings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history,
                color: Colors.blueGrey),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: Colors.blueGrey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule,
                color: Colors.blueGrey),
            label: 'Saving Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,
                color: Colors.blueGrey),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/saving');
              break;
            case 1:
              Navigator.pushNamed(context, '/history');
              break;
            case 2:
            // already on Home, do nothing
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

class SpendingChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Implement your custom painting logic here
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
