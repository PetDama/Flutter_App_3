import 'package:flutter/material.dart';

class ToDoListScreen extends StatefulWidget {
  @override
  _ToDoListScreenState createState() => _ToDoListScreenState();
}

class Task {
  String description;
  bool isCompleted;

  Task({required this.description, this.isCompleted = false});
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  /// The list of tasks.
  List<Task> tasks = [
    Task(description: 'Task 1', isCompleted: false),
    Task(description: 'Task 2', isCompleted: false),
    Task(description: 'Task 3', isCompleted: false),
    Task(description: 'Task 4', isCompleted: false),
    Task(description: 'Task 5', isCompleted: false),
  ];
  /// The build method of the widget. 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// The Flutter logo.
            FlutterLogo(
              size: 30,
            ),
            Text(
              'To-Do List',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        centerTitle: true,
      ),
      /// The body of the widget.
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          Task task = tasks[index];
          return ListTile(
            title: Text(task.description),
            leading: Checkbox(
              value: task.isCompleted,
              onChanged: (bool? value) {
                setState(() {
                  task.isCompleted = value ?? false;
                });
              },
            ),
          );
        },
      ),
      /// The bottom navigation bar of the widget.
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        child: Container(
          height: 50.0,
        ),
      ),
    );
  }
}