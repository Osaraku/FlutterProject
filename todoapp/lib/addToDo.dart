import 'package:flutter/material.dart';

class AddToDo extends StatefulWidget {
  const AddToDo({super.key});

  @override
  State<AddToDo> createState() => _AddToDoState();
}

class _AddToDoState extends State<AddToDo> {
  TextEditingController todoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Add Todo:'),
        TextField(
          controller: todoText,
          decoration: InputDecoration(
            hintText: 'Input your todo here',
            labelText: 'Username',
          ),
        ),
        ElevatedButton(onPressed: () {}, child: Text('Add')),
      ],
    );
  }
}
