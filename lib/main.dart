import 'package:unit_7_assignment_selerio/screens/about_me.dart';
import 'package:unit_7_assignment_selerio/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 235, 128, 128)),
      ),
      // Create the routes here
      initialRoute: '/',
      routes: {
        '/': (context) => const HomScreen(),
        '/about-me': (context) => const AboutMe(),
      },
    );
  }
}
