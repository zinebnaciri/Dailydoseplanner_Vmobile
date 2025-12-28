import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Supabase
  await Supabase.initialize(
    url: 'https://fareiznzymkuwwecdjef.supabase.co', 
    anonKey: 'sb_publishable_SUNY_5s7DHTpAbxfXy6qTg_OiwGaxZh', // Replace with your Supabase anon key
  );

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
        primarySwatch: Colors.red, // Optional: match your color palette
      ),
      home: const LoginScreen(), // Start with LoginScreen
    );
  }
}
