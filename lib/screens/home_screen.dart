import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/sidebar_drawer.dart';
import '../widgets/my_button.dart';
import 'tasks_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(title: 'Daily Dose Planner'),
      drawer: const SidebarDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Daily Dose Planner!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            MyButton(
              text: 'Go to Tasks',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const TasksScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
