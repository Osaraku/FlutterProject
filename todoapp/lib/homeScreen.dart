import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todoapp/addToDo.dart';
import 'package:todoapp/widget/todoList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> todoList = [];

  void addTodo({required String todoText}) {
    setState(() {
      todoList.insert(0, todoText);
    });
    updateLocalData();
    Navigator.pop(context);
  }

  void updateLocalData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setStringList('todoList', todoList);
  }

  void LoadData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    todoList = (prefs.getStringList('todoList') ?? []).toList();
    setState(() {});
  }

  void showAddTodoBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: AddToDo(addTodo: addTodo),
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    LoadData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.blueGrey[800],
        child: Icon(Icons.add, color: Colors.white),
        onPressed: showAddTodoBottomSheet,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.blueGrey[900],
              height: 200,
              width: double.infinity,
              child: Center(
                child: Text(
                  'data',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('About Me'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Contact Me'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(centerTitle: true, title: Text('To Do App')),
      body: Todolist(todoList: todoList, updateLocalData: updateLocalData),
    );
  }
}
