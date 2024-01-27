import 'package:flutter/material.dart';
import 'package:helloworld/add_new_todo_screen.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({Key? key}) : super(key: key);

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Todo List",
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: const Text("To Do List"),
              subtitle: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("To Do Body"),
                  Text("time"),
                ],
              ),
              trailing: Wrap(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete_outline_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  ),
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewTodoScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
