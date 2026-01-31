import 'package:flutter/material.dart';
import 'package:pinglet/controller/background_controller.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// 🔹 SAME GLOBAL BACKGROUND
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

          /// 🔹 Simple UI
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),

                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Change Background',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                /// 🔹 Background buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: backgrounds.map((bg) {
                    return GestureDetector(
                      onTap: () {
                        /// 🔥 MAGIC LINE
                        backgroundImage.value = bg;
                      },
                      child: Container(
                        width: 100,
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          image: DecorationImage(
                            image: AssetImage(bg),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
