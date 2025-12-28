import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/sidebar_drawer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(title: 'Profile'),
      drawer: const SidebarDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),
            SizedBox(height: 12),
            Text('User Name', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('user@example.com', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
