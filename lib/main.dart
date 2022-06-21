import 'package:flutter/material.dart';

void main() => runApp(const TodoApp());

class TodoApp extends StatefulWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Todo List',
        home: Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: const Text('Todo List'),
            centerTitle: true,
            backgroundColor: Colors.grey[850],
            elevation: 0,
          ),
          body: const Center(
            child: Text(
              'Todo List',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
          ),
        )
        ),
        );
  }
}
