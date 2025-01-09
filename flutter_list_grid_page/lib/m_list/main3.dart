import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text('${index + 1}'),
                  ),
                  title: Text('Item ${index + 1}'),
                  subtitle: Text('Item sub ${index + 1}'),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    color: Colors.grey,
                  )),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              indent: 10.0,
              endIndent: 10.0,
              thickness: 1.0,
              height: 20.0,
            );
          },
        ),
      ),
    );
  }
}
