import 'package:billionareapp/addMoneyButton.dart';
import 'package:billionareapp/balanceView.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  double balance = 500;

  void addMoneyButton() async {
    setState(() {
      balance += 500;
    });

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('balance', balance);
  }

  @override
  void initState() {
    loadBalance();
    super.initState();
  }

  void loadBalance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      balance = prefs.getDouble('balance') ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: Text('Billionare App!'), centerTitle: true),
        body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: double.infinity,
          color: Colors.blueGrey[800],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Balanceview(balance: balance),
              AddMoneyButton(addMoneyFunction: addMoneyButton),
            ],
          ),
        ),
      ),
    );
  }
}
