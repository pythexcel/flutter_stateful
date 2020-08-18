import 'package:flutter/material.dart';
import 'package:flutter_stateful/widgets/drawer.dart';

class AMCScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AMC Page'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Center(
        child: Text("AMC Page"),
      ),
      drawer: AppDrawer(),
    );
  }
}
