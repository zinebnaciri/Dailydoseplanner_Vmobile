import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/sidebar_drawer.dart';
import '../widgets/task_list.dart';
import '../widgets/loader.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  final List<Map<String, dynamic>> dummyTasks = const [
    {'title': 'Morning Medication', 'time': '08:00 AM', 'isDone': false},
    {'title': 'Evening Vitamins', 'time': '07:00 PM', 'isDone': true},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(title: 'Your Tasks'),
      drawer: const SidebarDrawer(),
      body: dummyTasks.isEmpty
          ? const Loader()
          : TaskList(tasks: dummyTasks),
    );
  }
}
