import 'package:flutter/material.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture and Navigation"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is supposed to be a Home Screen"),
            const SizedBox(height: 20),

            // INSERT CODE BELOW
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/about-me'); // Nav About Me screen
              },
              child: const Text('Go to About Me Screen'),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/about-me'); // Nav on tap
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                color: const Color.fromARGB(255, 234, 235, 236),
                child: const Text(
                  'Tap to Navigate to About Me',
                  style: TextStyle(color: Color.fromARGB(255, 70, 66, 66)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
