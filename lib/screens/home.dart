import 'package:flutter/material.dart';
import "package:flutter_stateful/widgets/home/amc.dart";
import 'package:flutter_stateful/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(child: AMCSummaryData()),
      drawer: AppDrawer(),
    );
  }
}
