import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_statement_v01/_02test/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: HomeScreen(),
    ),
  );
}
