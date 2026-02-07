import 'package:flutter/material.dart';

import 'pages/pinglet_home.dart';
import 'pages/intro.dart';
import 'pages/setting.dart';
import 'pages/signup.dart';
import 'pages/login.dart';
import 'pages/inbox.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const IntroPage(),
        '/home': (context) => const PingletHome(),
        '/signup': (context) => const SignupPage(),
        '/login': (context) => const LoginPage(),
        '/settings': (context) => const SettingPage(),
        '/inbox': (context) => const InboxPage(),
      },
    );
  }
}
