import 'package:flutter/material.dart';
import 'package:todoapp/addToDo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Text('data')),
      appBar: AppBar(
        centerTitle: true,
        title: Text('To Do App'),
        actions: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: AddToDo(),
                    ),
                  );
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
