import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  final String title;
  const TabButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(title, style: const TextStyle(color: Colors.white)),
    );
  }
}
