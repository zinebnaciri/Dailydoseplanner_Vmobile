import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String text;

  const Footer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Colors.grey[200],
      child: Center(
        child: Text(text, style: const TextStyle(fontSize: 14)),
      ),
    );
  }
}
