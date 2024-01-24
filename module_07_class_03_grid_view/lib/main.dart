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

  mySnakeBar(context, masseage) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(masseage)));
  }

  //#custom jason data create
  List<Map<String, dynamic>> myProducts = [
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Apple iMac',
      'price': 1999.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'iPad Pro',
      'price': 799.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'MacBook Air',
      'price': 1299.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Magic Mouse',
      'price': 69.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'AirPods Pro',
      'price': 249.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Apple Watch Series 7',
      'price': 399.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'HomePod Mini',
      'price': 99.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'iPhone 13 Pro',
      'price': 1099.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Apple Pencil',
      'price': 129.99
    },
    {
      'image':
          'https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg',
      'title': 'Apple TV 4K',
      'price': 179.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Laptop XYZ',
      'price': 899.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Gaming Mouse',
      'price': 49.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Wireless Keyboard',
      'price': 79.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'External Hard Drive',
      'price': 129.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Bluetooth Headphones',
      'price': 69.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Smartphone Stand',
      'price': 19.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Webcam',
      'price': 59.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Wireless Charger',
      'price': 39.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'Portable Speaker',
      'price': 89.99
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2013/07/13/11/46/laptop-158648_640.png',
      'title': 'USB-C Cable',
      'price': 9.99
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Color(0xf7f40606),
        elevation: 10,
        leading: Icon(
          Icons.settings_applications_sharp,
          size: 50,
          color: Colors.amberAccent,
        ),
        title: Text('List_tile List View'),
      ),

      //# dynamic listViewe start
      body: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

              // Adjust the number of columns as needed
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 8),
          itemCount: myProducts.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Card(
                color: Color(0xffe5e7de),
                elevation: 5,
                child: Container(
                  width: double.infinity,
                  height: 150,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(
                          myProducts[index]['image']!,
                          fit: BoxFit.fill,
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
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '\$${myProducts[index]['price']!}',
                          style: TextStyle(
                            color: Color(0xfff40303),
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
