
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Home(),
    );
  }
}








class Home extends StatelessWidget {
  //#custom snakebar create

  // mySnakeBar(context, masseage) {
  //   return ScaffoldMessenger.of(context)
  //       .showSnackBar(SnackBar(content: Text(masseage)));
  // }
  myToast(context, massage) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(massage),
      ),
    );
  }

  //#custom jason data create
  List<Map<String, dynamic>> myProducts = [
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 1'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 2'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 3'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 4'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 5'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 6'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 7'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 8'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 9'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 10'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 11'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 12'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 13'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 14'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 15'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 16'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 17'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 18'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 19'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2023/12/24/00/17/ai-generated-8466443_1280.jpg',
      'title': 'AI-Generated Image 20'
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Center(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Color(0xf7f40606),
          elevation: 10,
          leading: Icon(
            Icons.settings_applications_sharp,
            size: 50,
            color: Colors.amberAccent,
          ),
          title: Text('List View with image'),
        ),

        //# dynamic listViewe start
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: myProducts.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  myToast(context, myProducts[index]['title']);
                },
                child: Card(
                  color: Color(0xffe5e7de),
                  elevation: 5,
                  child: Container(
                    width: double.infinity,
                    height: 250,
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            myProducts[index]['img']!,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            myProducts[index]['title']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
