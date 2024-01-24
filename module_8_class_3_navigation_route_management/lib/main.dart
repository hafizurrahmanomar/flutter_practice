
import 'package:flutter/material.dart';

/// KISS - Keep It Simple, Stupid

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Route = Screen
            /// Navigator - 1,2

            /// Route 1(Current screen) -> Route 2 (LoginPage)
            /// Step 1- Navigator - push
            /// Step 2 - Context (current route)
            /// Step 3 - Convert LoginPage as Route with MaterialPageRoute

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(
                        userName: "Hafizur Rahman",
                      ),
                    ),
                  );
                },
                child: Text('Home to Login Page')),

            ElevatedButton(
              onPressed: () {
                /// Back to previous screen
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginPage(
                            userName: "Hafizur Rahman",
                          )),
                  (route) => false,
                );
              },
              child: Text('Direct Home  to Login Page '),
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ),
                  );
                },
                child: Text('Home to Register Page'))
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
    required this.userName,
    this.myAge,
  });
  final String userName;
  final int? myAge;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userName),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterPage(),
                    ),
                  );
                },
                child: Text('Login  page to Registe Page'))
          ],
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(title: Text('Register Page')),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                /// Back to previous screen
                Navigator.pop(context);
              },
              child: Text('Register page to pop Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}

