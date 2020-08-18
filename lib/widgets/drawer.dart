import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 65,
            child: DrawerHeader(
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
            title: Text('Home Page'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: Text('AMC List'),
            onTap: () {
              Navigator.pushNamed(context, '/amc');
            },
          ),
        ],
      ),
    );
  }
}
