import 'dart:math';

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
  //# for TextField control=>option-01
  TextEditingController coustomTextEditingControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons | Textfield | Container | Form'),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //# Container start
          children: [
            Container(
              alignment: Alignment.center,
              child: Text('Cantainer Text'),
              width: 200,
              height: 100,
              //color: Color(0xffff4040), //#if decoration must be color off
              //margin: EdgeInsets.all(25),
              //margin: EdgeInsets.fromLTRB(20, 50, 20, 50),
              //margin: EdgeInsets.only(left: 20, bottom: 10, right: 15, top: 25),
              margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),

              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 10,
                    style: BorderStyle.solid,
                  ),
                  //#borderRadius more than option available
                  // borderRadius: BorderRadius.circular(10),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(0)),
                  color: Colors.green,
                  //# if BoxShape used =>must be borderRadius option off
                  //shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8,
                        offset: Offset(3, 5),
                        blurStyle: BlurStyle.normal),
                    BoxShadow(
                        color: Colors.blue,
                        blurRadius: 5,
                        offset: Offset(2, 1),
                        blurStyle: BlurStyle.normal),
                  ]),
            ),

            //#ElevatedButton start

            //ElevatedButton(onPressed: onPressed, child: child)
            ElevatedButton(
              //autofocus: true,
              onPressed: () {
                print('ElevatedButton press ');
              },
              child: Text('ElevatedButton Tap Here'),

              onLongPress: () {
                print('ElevatedButton on long press ');
              },

              //#For ElevatedButton style
              style: ElevatedButton.styleFrom(
                //#ElevatedButton size available now
                maximumSize: Size(500, 100),
                minimumSize: Size(250, 50),
                //padding: EdgeInsets.all(20),
                //padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                //padding: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                foregroundColor: Color(0xf0f94706),
                backgroundColor: Colors.amber,
                elevation: 7,
                shadowColor: Colors.grey,
                //alignment: Alignment(1, 2)),
                //#ElevatedButton.styleFrom=> for button textStyle
                textStyle: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700,
                  //color: Colors.lightBlue,
                  letterSpacing: 2,
                  wordSpacing: 5,
                ),

                //#ElevatedButton.styleFrom=>for button shape

                shape: RoundedRectangleBorder(
                  borderRadius:
                      //BorderRadius.horizontal(right: Radius.circular(8)),
                      //BorderRadius.only(bottomLeft: Radius.elliptical(4, 10)),
                      //BorderRadius.only(bottomLeft: Radius.circular(10)),
                      //BorderRadius.only(bottomRight: Radius.circular(50)),
                      BorderRadius.circular(50),
                ),
              ),
            ),

            //#TextButton start

            TextButton(
              onPressed: () {
                print('My Text Button Same to ElevatedButton ');
              },
              child: Text('My Text Button'),
              style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(30, 25, 30, 25),
                foregroundColor: Color(0xFFffffff),
                backgroundColor: Color(0xff900606),
                elevation: 7,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            //#IconButton start

            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            // FloatingActionButton(
            //   onPressed: () {},
            //   child: Text(' FAB Button'),
            // ),

            //#FloatingActionButton start

            FloatingActionButton.extended(
              onPressed: () {},
              label: Text('FAB extended'),
            ),

            //#TextField start

            TextField(
              //# for TextField control=>option-02
              controller: coustomTextEditingControler,
              //# for print conslee
              onTap: () {
                print("Something print by on tape function");
              },
              //#TextField any change observation in console

              onChanged: (String input) {
                print(input);
              },
              // # for password
              obscureText: true,
              // # TextField and  keyboard control and more option
              // keyboardType: TextInputType.text,
              //keyboardType: TextInputType.phone,
              //keyboardType: TextInputType.emailAddress,
              //keyboardType: TextInputType.url,
              keyboardType: TextInputType.name,

              // # for TextCapitalization and more option

              textCapitalization: TextCapitalization.characters,

              // # for TextAlign and more option

              textAlign: TextAlign.center,

              // # for TextAlign vertical and more option
              textAlignVertical: TextAlignVertical.center,

              // # for textInputAction, keyboard control and more option
              //textInputAction: TextInputAction.next,
              textInputAction: TextInputAction.done,

              //# for TextField control=>option-03=> before done click

              onSubmitted: (String value) {
                //# for TextInputAction print before clear
                print(coustomTextEditingControler.text);
                coustomTextEditingControler.clear();
              },

              decoration: InputDecoration(
                //#for text input enable(true),disable(false)
                enabled: true, //#border and enabledBorder work
                ///enabled: true,//#border and enabledBorder work
                hintText: 'Enter Your Full Name',
                //label: Text('Your Name'),
                labelText: 'Name',

                //#border(main focus border design ) start

                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 10,
                    color: Color(0xfffd0808),
                    style: BorderStyle.solid,
                  ),
                ),

                //# enabledBorder start

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 10,
                    color: Colors.blue,
                    style: BorderStyle.solid,
                  ),
                ),

                //# disabledBorder start

                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 10,
                    color: Colors.red,
                    style: BorderStyle.solid,
                  ),
                ),

                //# disabledBorder start

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 5,
                    color: Colors.yellowAccent,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),

            //#TextField End
          ],
        ),
      ),

      //#loatingActionButton mandatory area
      ////#for location change
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,

      //#floatingActionButton start

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
