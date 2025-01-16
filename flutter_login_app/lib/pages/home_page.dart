import 'package:flutter/material.dart';
import 'package:flutter_login_app/components/logo.dart';
import 'package:flutter_login_app/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: xlargeGap),
          Logo('Care Soft'),
          SizedBox(height: xlargeGap),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Get Started'),
          )
        ],
      ),
    );
  }
}
