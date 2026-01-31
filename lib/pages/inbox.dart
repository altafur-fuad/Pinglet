import 'package:flutter/material.dart';
import 'package:pinglet/controller/background_controller.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ValueListenableBuilder(
            valueListenable: backgroundImage,
            builder: (context, value, child) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(value),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),

          Container(color: Colors.black.withOpacity(0.7)),
        ],
      ),
    );
  }
}
