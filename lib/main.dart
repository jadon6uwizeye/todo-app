// import 'package:flutter/material.dart';

// void main() => runApp(const TodoApp());

// class TodoApp extends StatefulWidget {
//   const TodoApp({Key? key}) : super(key: key);

//   @override
//   State<TodoApp> createState() => _TodoAppState();
// }

// class _TodoAppState extends State<TodoApp> {
//   // ignore: prefer_final_fields
//   List<String> todoItems = <String>[];

//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Todo List',
//       home: Scaffold(
//           backgroundColor: Colors.grey[900],
//           appBar: AppBar(
//             title: const Text('Todo List'),
//             centerTitle: true,
//             backgroundColor: Colors.grey[850],
//             elevation: 0,
//           ),
//           floatingActionButton: FloatingActionButton(
//             onPressed: _handle_click,
//             tooltip: 'Add Task',
//             backgroundColor: Colors.grey[800],
//             child: const Icon(Icons.add),
//           ),
//           body: ListView.builder(
//             itemCount: counter,
//             itemBuilder: (BuildContext context, int index) {
//               if (index < todoItems.length) {
//                 return ListTile(
//                   title: Text(
//                     todoItems[index],
//                     style: TextStyle(
//                       color: Colors.grey[50],
//                       fontSize: 20,
//                     ),
//                   ),
//                 );
//               } else {
//                 return const Text('No Items there',
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 20,
//                     ));
//               }
//             },
//           )),
//     );
//   }

//   // ignore: non_constant_identifier_names
//   void _handle_click() {
//     Navigator.of(context)
//         .push(MaterialPageRoute(builder: (BuildContext context) {
//       return Builder(builder: (context) {
//         return Scaffold(
//           appBar: AppBar(
//             title: const Text(
//               'add new task',
//               style: TextStyle(color: Colors.amber),
//             ),
//           ),
//           body: TextField(
//             autofocus: true,
//             onSubmitted: (val) {
//               todoItems.add(val);
//               Navigator.pop(context);
//             },
//             decoration: const InputDecoration(
//                 hintText: ' enter something to do ...',
//                 contentPadding: EdgeInsets.all(16.0)),
//           ),
//         );
//       });
//     }));
//   }

//   //   setState(() {
//   //     counter++;
//   //   });
//   // }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Todo',
    home: TodoList(),
  ));
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<String> todoItems = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text('Todo List'),
      ),
      floatingActionButton: FloatingActionButton(
        focusColor: Colors.amber,
        onPressed: () async {
          final val = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddTodo()),
          );
          if (val != null) {
            setState(() {
              todoItems.add(val);
            });
          }
        },
        tooltip: 'add todo',
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todoItems.length,
        itemBuilder: (BuildContext context, int index) {
          final item = todoItems[index];
          return ListTile(
            title: Text(
              item,
              style: TextStyle(
                color: Colors.grey[50],
                fontSize: 20,
              ),
            ),
          );
        },
      ),
    );
  }
}

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<AddTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: const Text('add todo'),
        ),
        body: TextField(
          autofocus: true,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          decoration: const InputDecoration(
            hintText: 'enter something to do ...',
            contentPadding: EdgeInsets.all(20.0),
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          onSubmitted: (val) {
            Navigator.pop(context, val);
          },
        ));
  }
}
