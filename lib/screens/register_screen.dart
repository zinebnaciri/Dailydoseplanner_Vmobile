import 'package:flutter/material.dart';
import '../widgets/input_field.dart';
import '../widgets/my_button.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputField(controller: emailController, hintText: 'Email'),
            const SizedBox(height: 12),
            InputField(controller: passwordController, hintText: 'Password', obscureText: true),
            const SizedBox(height: 20),
            MyButton(
              text: 'Register',
              onPressed: () {
                // Add register logic here
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
