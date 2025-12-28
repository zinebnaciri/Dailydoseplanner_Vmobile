import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/sidebar_drawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(title: 'About'),
      drawer: const SidebarDrawer(),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Daily Dose Planner App helps you manage your daily tasks, medications, and vitamins efficiently.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
