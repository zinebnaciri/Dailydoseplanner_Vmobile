import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/sidebar_drawer.dart';
import '../widgets/my_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(title: 'Settings'),
      drawer: const SidebarDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            MyButton(text: 'Change Theme', onPressed: () {}),
            const SizedBox(height: 12),
            MyButton(text: 'Notifications', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
