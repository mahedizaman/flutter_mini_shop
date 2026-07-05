import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 252, 244),
      appBar: AppBar(
        backgroundColor: Colors.amber.shade50,
        title: Text.rich(
          TextSpan(
            text: 'Shoes, \n',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight(600),
            ),
            children: [
              TextSpan(
                text: 'Collection',
                style: const TextStyle(
                  fontWeight: FontWeight(600),
                  color: Colors.amber,
                  fontSize: 28,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(child: Column(children: [])),
    );
  }
}
