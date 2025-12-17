import 'package:flutter/material.dart';

class Child3 extends StatelessWidget {
  const Child3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset("assets/images/flutter_icon.png", height: 40),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tio',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Flutter Developer', style: TextStyle(color: Colors.white)),
              Text('@tio_ariyanto', style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
