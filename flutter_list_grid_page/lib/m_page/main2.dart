import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('pageview'),
          ),
          body: PageView(
            controller: PageController(
              initialPage: 2,
              viewportFraction: 0.9,
            ),
            children: [
              Container(
                margin: EdgeInsets.all(0.0),
                color: Colors.yellow,
              ),
              Container(
                margin: EdgeInsets.all(0.0),
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.all(0.0),
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/koromon.jpeg',
                      fit: BoxFit.cover,
                      height: 150,
                      width: 150,
                    ),
                    Text(
                      '코로몬',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
