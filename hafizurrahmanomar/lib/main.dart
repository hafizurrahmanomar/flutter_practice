 import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HafizurRahmanOmarInfo(),
    );
  }
}

class HafizurRahmanOmarInfo extends StatelessWidget {
  const HafizurRahmanOmarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          elevation: 7.0,
          toolbarOpacity: 1.0,
          shadowColor: Colors.white,
          leading: const Icon(
            Icons.person,
            color: Colors.amber,
            size: 25.0,
          ),
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: const Text(
            "Hafizur Rahman Omar",
            selectionColor: Colors.amber,
            style: TextStyle(
              color: Colors.amber,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              fontFamily: "Pacifico",
              letterSpacing: 2.0,
              wordSpacing: 2.0,
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/hafizurrahmanomar.jpg"),
                    radius: 50.0,
                  ),
                ),
                Text(
                  "Hafizur Rahman Omar",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico",
                    letterSpacing: 1.0,
                    wordSpacing: 2.0,
                  ),
                ),
                Text(
                  "Web & App Developer",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat",
                    wordSpacing: 1.0,
                  ),
                ),
                Text(
                  "CEO: webappdeveloperbd",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "SourceSansPro",
                    letterSpacing: 1.0,
                  ),
                ),
                SizedBox(
                  width: 200.0,
                  height: 20.0,
                  child: Divider(
                    thickness: 2.5,
                    color: Colors.white,
                    indent: 45.0,
                  ),
                ),
                Card(
                  elevation: 7.0,
                  shadowColor: Colors.grey,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                      size: 20.0,
                    ),
                    title: Text(
                      "+8801734731069",
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSansPro",
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 7.0,
                  shadowColor: Colors.grey,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.teal,
                      size: 20.0,
                    ),
                    title: Text(
                      "hafizurrahmanomar@gmail.com",
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: "SourceSansPro",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
