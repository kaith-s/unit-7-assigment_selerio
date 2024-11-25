import 'package:unit_7_assignment_selerio/components/tab_widget_1.dart';
import 'package:unit_7_assignment_selerio/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    // INSERT CODE HERE!!!!
    // Hint: You need to use the following widgets
    // DefaultTabController, TabBar, Tab and TabBarView
    return DefaultTabController(
      length: 2, // tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text("About Me"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: "Contacts"),
              Tab(icon: Icon(Icons.school), text: "Others"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TabWidget1(), // Replace first tab content widget
            TabWidget2(), // Replace second tab content widget
          ],
        ),
      ),
    );
  }
}
