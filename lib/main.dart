import 'package:flutter/material.dart';
import 'screens/about_page.dart';
import 'screens/main_page.dart';
import 'screens/cv_page.dart';
import 'screens/contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.light,
      ),
      home: const MainPage(),
      routes: {
        '/about': (context) => const AboutPage(),
        '/cv': (context) => const CVPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}
