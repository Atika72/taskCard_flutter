// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_01/new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome To"),
            const Text(
              "Plan It",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.4,
            ),
            const Text("Your Personal task Management \n and Planning Solution",
                textAlign: TextAlign.center,
                style: TextStyle(wordSpacing: 1.5)),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const NewPage()));
              },
              // style: ButtonStyle(),
              child: const Text("Let's get started"),
            )
          ],
        ),
      ),
    );
  }
}
