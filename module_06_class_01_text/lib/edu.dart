import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Full widget Practice'),
        backgroundColor: Colors.pink,
        elevation: 5,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              // Handle back button press
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        actions: [
          IconButton(
            onPressed: () {
              // Handle search button press
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Handle more options button press
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Subtitle or additional details',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Full Widget Practice',
              selectionColor: Colors.red,
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Colors.amber),
            ),
            SizedBox(height: 20),
            FlutterLogo(
              size: 100,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text(
                'Press Me',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
                Icon(Icons.star_border, color: Colors.yellow),
                Icon(Icons.star_border, color: Colors.yellow),
                Icon(Icons.star, color: Colors.yellow),
              ],
            )
          ],
        ),
      ),
    );
  }
}
