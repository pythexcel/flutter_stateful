import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(''),
          ),
          body: Center(
            child: Text('Hello World'),
          ),
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  height: 55.0,
                  child: DrawerHeader(
                    // padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    child: Text(
                      'Drawer Header',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    print('item1');
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    print('item2');
                  },
                ),
              ],
            ),
          )),
    );
  }
}
