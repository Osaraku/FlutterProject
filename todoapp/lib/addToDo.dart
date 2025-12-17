import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddToDo extends StatefulWidget {
  void Function({required String todoText}) addTodo;

  AddToDo({super.key, required this.addTodo});

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
          onSubmitted: (value) {
            if (todoText.text.isNotEmpty) {
              widget.addTodo(todoText: todoText.text);
            } else {}
            todoText.text = "";
          },
          autofocus: true,
          controller: todoText,
          decoration: InputDecoration(
            hintText: 'Input your todo here',
            labelText: 'To Do',
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (todoText.text.isNotEmpty) {
              widget.addTodo(todoText: todoText.text);
            } else {}
            todoText.text = "";
          },
          child: Text('Add'),
        ),
      ],
    );
  }
}
