import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: const MyHomePage(title: 'Expanded,SizeBox'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Column(
        /*
        ///Expanded Practice
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blueGrey,
            ),
          ),
        ],

        */
        ///Expanded Practice End
        /*
        ///SizeBox Practice
        children: [
          SizedBox(
            height: 200.0,
            width: 200.0,
            child: Text(
              "Size Box Practice",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 200.0,
            width: 200.0,
            child: FractionallySizedBox(
              widthFactor: 0.5,
              heightFactor: 0.5,
              alignment: Alignment.center,
              child: Text("FractionallySizedBox Practice"),
            ),
          ),
        ],
          ///SizeBox Practice End
        */

        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              width: double.infinity,
              color: Colors.brown,
            ),
          ),
          AspectRatio(
            aspectRatio: 10 / 1,
            child: Container(
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          AspectRatio(
            aspectRatio: 10 / 3,
            child: Container(
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
