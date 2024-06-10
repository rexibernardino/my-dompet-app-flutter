import 'package:flutter/material.dart';

class CurrencyPage extends StatefulWidget {
  final String selectedCurrency;

  CurrencyPage({Key? key, required this.selectedCurrency}) : super(key: key);

  @override
  _CurrencyPageState createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  late String _selectedCurrency;

  @override
  void initState() {
    super.initState();
    _selectedCurrency = widget.selectedCurrency;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context, _selectedCurrency);
          },
        ),
        title: const Text('Currency', style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'This currency preference will be used in your account. You can change this currency at any time.',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            _currencyOption('Dollar'),
            const SizedBox(height: 8.0),
            _currencyOption('Rupiah'),
            const SizedBox(height: 8.0),
            _currencyOption('Euro'),
          ],
        ),
      ),
    );
  }

  Widget _currencyOption(String currency) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCurrency = currency;
        });
      },
      child: Container(
        width: double.infinity, // Lebar container mengikuti lebar layar
        decoration: BoxDecoration(
          color: _selectedCurrency == currency ? Colors.green : Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.only(bottom: 8.0), // Jarak antar pilihan currency
        child: Text(
          currency,
          style: TextStyle(
            color: _selectedCurrency == currency ? Colors.white : Colors.black,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
