import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> imagePaths = [
      'assets/images/koromon.jpeg',
      'assets/images/agumon.jpeg',
      'assets/images/graymon.jpeg',
      'assets/images/bulmon.jpeg',
      'assets/images/papimon.jpeg',
      'assets/images/garumon.jpeg',
      'assets/images/tokomon.jpg',
      'assets/images/padak.jpg',
      'assets/images/angelmon.jpeg',
    ];
    const List<String> nameList = [
      '코로몬',
      '아구몬',
      '그레이몬',
      '뿔몬',
      '파피몬',
      '가루몬',
      '토코몬',
      '파닥몬',
      '엔젤몬',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 36.0,
          ),
          itemCount: imagePaths.length,
          itemBuilder: (context, index) {
            Color containerColor;
            if (index < 3) {
              containerColor = Colors.orange;
            } else if (index < 6) {
              containerColor = Colors.blue;
            } else {
              containerColor = Colors.yellow;
            }

            return Container(
              color: containerColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                    height: 150,
                    width: 150,
                  ),
                  Text(
                    nameList[index],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
