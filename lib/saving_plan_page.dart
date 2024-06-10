import 'package:flutter/material.dart';

class SavingPlanPage extends StatefulWidget {
  const SavingPlanPage({super.key});

  @override
  _SavingPlanPageState createState() => _SavingPlanPageState();
}

class _SavingPlanPageState extends State<SavingPlanPage> {
  double _sliderValue = 0.87; // Menyimpan nilai dari Slider

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
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Savings Plan',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            Center(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: CircularProgressIndicator(
                          value: _sliderValue,
                          strokeWidth: 10.0,
                          backgroundColor: Colors.grey[300],
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        '${(_sliderValue * 100).toStringAsFixed(0)}%',
                        style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.0),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 8.0,
                      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    ),
                    child: Slider(
                      value: _sliderValue,
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                      activeColor: Colors.green,
                      inactiveColor: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Goals Name',
                filled: true,
                fillColor: Color(0xFFEFEFEF),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nominal',
                filled: true,
                fillColor: Color(0xFFEFEFEF),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Spending Target',
                filled: true,
                fillColor: Color(0xFFEFEFEF),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24.0),
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
        selectedItemColor: Colors.green, // Warna item yang dipilih
        unselectedItemColor: Colors.grey,
        currentIndex: 3, // Indeks halaman saat ini
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
            // already on Saving Plan, do nothing
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
