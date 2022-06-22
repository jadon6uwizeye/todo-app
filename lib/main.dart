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
