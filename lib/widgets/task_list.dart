import 'package:flutter/material.dart';
import 'task_card.dart';

class TaskList extends StatelessWidget {
  final List<Map<String, dynamic>> tasks;

  const TaskList({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return TaskCard(
          title: task['title'],
          time: task['time'],
          isDone: task['isDone'],
        );
      },
    );
  }
}
