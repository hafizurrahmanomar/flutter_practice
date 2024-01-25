import 'package:flutter/material.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
      centerTitle: true,
      backgroundColor: Colors.deepPurpleAccent,
      title: const Text("Todo App",style: TextStyle(
      color: Colors.white
    ),),),);
 }
}

