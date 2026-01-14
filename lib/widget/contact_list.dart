import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: const [
          CircleAvatar(
            radius: 22,
            backgroundColor: Colors.transparent,
            child: Icon(Icons.person, color: Colors.white, size: 30),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text('Hala Madrid', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
