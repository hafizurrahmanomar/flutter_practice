import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Image Practice',
      home: Images(),
    );
  }
}

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFfff23E),
        leading: Icon(
          Icons.image_search,
          color: Colors.purpleAccent.shade700,
          size: 50,
        ),
        elevation: 10,
      ),
      body: Container(
        child: Center(
          // child: Image.network(
          //     'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/09/instagram-image-size.jpg'),
          child: Image.asset(
            'images/bird.png',
            height: 250,
            width: 300,
            //fit: BoxFit.contain,
            fit: BoxFit.cover,
            //repeat: ImageRepeat.repeat,
          ),
        ),
      ),
    );
  }
}
