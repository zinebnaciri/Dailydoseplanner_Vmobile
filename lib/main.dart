import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const DailyDosePlannerApp());
}

class DailyDosePlannerApp extends StatelessWidget {
  const DailyDosePlannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Dose Planner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(), // Start with LoginScreen
    );
  }
}
