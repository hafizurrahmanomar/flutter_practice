import 'package:flutter/material.dart';
import 'package:module_12_class_1_todoapp_design/add_new_todo_screen.dart';

import 'edit_todo_screen.dart';

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
      body: ListView.separated(
        separatorBuilder: (context,index){
          return const Divider(
            color: Colors.amberAccent,
            height: 14,
            indent: 16,
            endIndent: 10,
          );
        },
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
                    /// onPressed code variable step-02
                  onPressed: showDeletConfirmationDialog,

                    icon: const Icon(Icons.delete_outline_outlined),
                  ),
                  IconButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context) =>const EditTodoScreen(),),);
                    },
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
/// onPressed code details step-01
  void showDeletConfirmationDialog(){
    onPressed: () {
      showDialog(context: context, builder: (context){
        return AlertDialog(
          title: const Text("To Do  list Dialog"),
          content: const Text("Are you sure you want to back my app"),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, child: const Text("Cancel",style: TextStyle(color: Colors.red),),),
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text("Yes"),),

          ],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),

        );
      },);
    };
  }
}
