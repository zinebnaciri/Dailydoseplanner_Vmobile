import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/input_field.dart';
import '../widgets/my_button.dart';

class TaskDetailScreen extends StatelessWidget {
  final String taskTitle;
  final String taskTime;

  const TaskDetailScreen({super.key, required this.taskTitle, required this.taskTime});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController(text: taskTitle);
    final timeController = TextEditingController(text: taskTime);

    return Scaffold(
      appBar: const Navbar(title: 'Task Detail'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputField(controller: titleController, hintText: 'Task Title'),
            const SizedBox(height: 12),
            InputField(controller: timeController, hintText: 'Task Time'),
            const SizedBox(height: 20),
            MyButton(
              text: 'Save',
              onPressed: () {
                // Add save logic here
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
