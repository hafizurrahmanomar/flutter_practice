

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Row ,Clumn,dialogs and rich text practice',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home_Row_clumn and Rich Text',
        ),
        elevation: 10,
      ),
      // body: Raw(
      //   children: [
      //     Text('Cloumn Start'),
      //     Text('Subahanallah'),
      //     Text('সুবহানাল্লাহ'),
      //     Text('Alhamdulillah'),
      //     Text('আলহামদুলিল্লাহ'),
      //     Text('Allahuakbar'),
      //     Text('আল্লাহু আকবার'),
      //     Text('La- Elaha Ellallah'),
      //     Text('লা-ইলাহা ইল্লাল্লাহ'),
      //     Text('Cloumn End'),
      //   ],
      // ),

      body: Column(
        //mainAxisSize: MainAxisSize.min,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.end,
        //mainAxisAlignment: MainAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Cloumn Start'),
          Text('Subahanallah'),
          Text('সুবহানাল্লাহ'),
          Text('Alhamdulillah'),
          Text('আলহামদুলিল্লাহ'),
          Text('Allahuakbar'),
          Text('আল্লাহু আকবার'),
          Text('La- Elaha Ellallah'),
          Text('লা-ইলাহা ইল্লাল্লাহ'),
          Text('Cloumn End'),
          Row(
            children: [

              // Text('Cloumn in Row Start'),
              // Text('Subahanallah'),
              Text('সুবহানাল্লাহ'),
              // Text('Alhamdulillah'),
              // Text('আলহামদুলিল্লাহ'),
              // Text('Allahuakbar'),
              // Text('আল্লাহু আকবার'),
              // Text('Cloumn in Cloumn End'),

              Image.asset('images/logo.png'),

              //Text('Cloumn in Row Start'),
              // Text('Subahanallah'),
              // Text('সুবহানাল্লাহ'),
              // Text('Alhamdulillah'),
              // Text('আলহামদুলিল্লাহ'),
              // Text('Allahuakbar'),
              Text('আল্লাহু আকবার'),
              //Text('Cloumn in Cloumn End'),

            ],
          ),
          Column(
            //mainAxisSize: MainAxisSize.min,
            //mainAxisSize: MainAxisSize.max,
            children: [
              Text('Cloumn in Cloumn Start'),
              Text('Allahuakbar'),
              Text('আল্লাহু আকবার'),
              Text('La- Elaha Ellallah'),
              Text('লা-ইলাহা ইল্লাল্লাহ'),
              Text('Cloumn in Cloumn End'),
              //This is Rich Text Part in cloumn
              RichText(
                text: TextSpan(
                    text: 'Alhamdulillah=>',
                    style: TextStyle(
                      color: Colors.purple.shade400,
                      fontSize: 35,
                      //decoration: TextDecoration.underline,
                    ),
                    children: [
                      TextSpan(
                        text: 'Please Subscribe:',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.amber.shade700,
                        ),
                      ),
                      TextSpan(
                        text: 'My Youtube Channel',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff5900ff),
                        ),
                      ),
                      TextSpan(
                        text: 'Web App Developer BD',
                        style: TextStyle(
                          fontSize: 35,
                          color: Color(0xffff5d00),
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.double,
                        ),
                      ),
                    ]),
              ),

              //This is Button Part in cloumn
              ElevatedButton(
                  onPressed: () {
                    //showAboutDialog(context: context);
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('This is alert Dialog'),
                            content: Text('This alert meassage'),
                            actions: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Are you back now!'),
                              )
                            ],
                          );
                        });
                  },
                  child: Text('Tap Here')),
            ],
          ),
        ],
      ),
    );
  }
}
