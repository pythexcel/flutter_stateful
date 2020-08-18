import 'package:flutter/material.dart';
import 'package:flutter_stateful/screens/home.dart';
import 'package:flutter_stateful/screens/amc.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My First Flutter App',
        theme: ThemeData.light(),
        initialRoute: "/",
        routes: {
          '/': (context) => HomeScreen(),
          '/amc': (context) => AMCScreen()
        }));
