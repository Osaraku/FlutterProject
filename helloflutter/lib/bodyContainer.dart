import 'package:flutter/material.dart';
import 'package:helloflutter/child1.dart';
import 'package:helloflutter/child2..dart';
import 'package:helloflutter/child3.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue[100],
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Child1(), Child2(), Child3()],
      ),
    );
  }
}
