import 'package:flutter/material.dart';

class RecomendSongs extends StatelessWidget {
  const RecomendSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 16.0),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Center(
                child: Text(
                  '드라마 OST',
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Center(
                child: Text(
                  '락',
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Center(
                child: Text(
                  '온라인 화석',
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Center(
                child: Text(
                  '힙합',
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Center(
                child: Text(
                  '발라드',
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 16.0),
          ],
        ),
      ),
    );
  }
}
