import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/todo_list_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// MaterialApp Section Start
    return MaterialApp(
      home: TodoListScreen(),

      ///ThemeData Section Start

      theme: ThemeData(
          colorSchemeSeed: Colors.blue,

          /// AppBarTheme Section Start
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.blue,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.amberAccent),
            titleTextStyle: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),

          /// AppBarTheme Section End

          ///TextFormField in Theme data Start
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amber),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
          ),

          ///TextFormField in Themedata End

          ////// ElevatedButton custom Design Start
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigoAccent,
              foregroundColor: Colors.white,
              shadowColor: Colors.grey,
              elevation: 7.0,
              padding: EdgeInsets.all(20.00),
              textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
              minimumSize: Size(50, 30),
            ),
          )

          ////// ElevatedButton custom Design End
          ),

      ///ThemeData Section End
    );

    /// MaterialApp Section End
  }
}
