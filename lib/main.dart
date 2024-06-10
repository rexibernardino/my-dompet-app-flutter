import 'package:flutter/material.dart';
import 'landing_page.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'dashboard_page.dart';
import 'saving_page.dart';
import 'income_page.dart';
import 'spending_page.dart';
import 'setting_page.dart';
import 'history_page.dart';
import 'saving_plan_page.dart';
import 'currency_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyDompet',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/saving': (context) => const SavingPage(),
        '/income': (context) => const IncomePage(),
        '/spending': (context) => const SpendingPage(),
        '/setting': (context) => const SettingPage(),
        '/history': (context) => const HistoryPage(),
        '/saving_plan': (context) => const SavingPlanPage(),
        '/currency': (context) => CurrencyPage(selectedCurrency: 'Rupiah',),
      },
    );
  }
}