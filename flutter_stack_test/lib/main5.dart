import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [_circle()],
            ),
          ),
        ),
      ),
    );
  }
}

class _circle extends StatelessWidget {
  const _circle({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        width: 300,
        height: 300,
        child: Text(
          "2 :55 : 10",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          // borderRadius: BorderRadius.circular(360),
          border: Border.all(
            color: Colors.blue,
            width: 5,
          ),
        ),
      ),
    );
  }
}
