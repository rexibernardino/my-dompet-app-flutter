import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

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
        title: const Text('Transaction History'),
      ),
      body: ListView(
        children: const [
          SizedBox(height: 16.0),
          Text(
            '15 Aug 2020',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Nike Air Max 2090'),
            trailing: Text(
              '-\$243.00',
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Text('15 Aug 2020'),
          ),
          ListTile(
            leading: Icon(Icons.device_hub),
            title: Text('iPad Pro 2020'),
            trailing: Text(
              '-\$799.00',
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Text('15 Aug 2020'),
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text('Pemasukkan'),
            trailing: Text(
              '+\$700.00',
              style: TextStyle(color: Colors.green),
            ),
            subtitle: Text('15 Aug 2020'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Nike Air Max 2090'),
            trailing: Text(
              '-\$243.00',
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Text('15 Aug 2020'),
          ),
          // Tambahkan ListTile lainnya sesuai kebutuhan
        ],
      ),
    );
  }
}