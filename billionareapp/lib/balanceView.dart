import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class Balanceview extends StatelessWidget {
  double balance;

  Balanceview({super.key, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Bank Balance:'),
          SizedBox(height: 20),
          Text(
            '${NumberFormat.simpleCurrency().format(balance)}',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
