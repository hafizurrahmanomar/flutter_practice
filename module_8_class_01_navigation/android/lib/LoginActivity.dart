import 'package:flutter/material.dart';

class LoginActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, '/profile');
        }, child: Text('Profile')),
      ),
    );
  }
}
