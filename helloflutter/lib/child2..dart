import 'package:flutter/material.dart';

class Child2 extends StatelessWidget {
  const Child2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/flutter_icon.png", height: 100),
        SizedBox(height: 10),
        Text('This App Developed By Tio'),
      ],
    );
  }
}
