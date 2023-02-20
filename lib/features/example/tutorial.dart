import 'package:flutter/material.dart';
import 'package:flutter_amazone/features/auth/screens/auth_screen.dart';

class ExampleHome extends StatefulWidget {
  const ExampleHome({super.key});

  @override
  State<ExampleHome> createState() => _ExampleHomePageState();
}

class _ExampleHomePageState extends State<ExampleHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'Home Page',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AuthScreen.routeName);
              },
              child: const Text("Click"))
        ],
      ),
    );
  }
}
