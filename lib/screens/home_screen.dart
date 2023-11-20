import 'package:flutter/material.dart';

import '../screens/to_do_list_screen.dart';

/// The home screen of the app.
class HomeScreen extends StatelessWidget {
  /// The constructor of the home screen.
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// The app bar of the home screen.
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Organize your tasks efficiently with To-Do List'),
        actions: <Widget>[
          /// The copy button of the app bar.
          IconButton(
            onPressed: () {
              print('Copy button pressed');
            },
            icon: const Icon(Icons.content_copy),
          ),
          /// The search button of the app bar.
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: ToDoListScreen(),
      ),
      /// The floating action button of the home screen.
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green,
        icon: const Icon(Icons.access_alarm),
        label: const Text('FAB Label'),
        onPressed: () => showDummyDialog(context),
      ),
    );
  }

  /// Shows a dummy dialog.
  void showDummyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        /// The dialog box.
        return const AlertDialog(
          title: Text('Dummy Dialog Title'),
          content: Text('Dummy Dialog Content'),
        );
      },
    );
  }
}