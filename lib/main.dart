import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TimerWidget(),
    );
  }
}

class TimerWidget extends StatefulWidget {
  @override
  _TimerWidget createState() => _TimerWidget();
}

class _TimerWidget extends State<TimerWidget> {
  static const timeout = const Duration(seconds: 3);
  static const ms = const Duration(milliseconds: 1);
  int _timer = 0;
  Timer _timerObj;
  bool timer = false;

  _TimerWidget() {
    //_timerObj = startTimeout();
  }

  startTimeout([int milliseconds]) {
    var duration = milliseconds == null ? timeout : ms * milliseconds;
    return new Timer.periodic(duration, _increaseTimer);
  }

  void _increaseTimer(Timer _timerObj) {
    setState(() {
      print(_timer);
      _timer++;
    });
  }

  void _stopTimer() {
    print("stop timer");
    setState(() {
      timer = false;
    });
    _timerObj.cancel();
  }

  void _startTimer() {
    print("start timer");
    setState(() {
      timer = true;
    });
    _timerObj = startTimeout();

    // if (!_timerObj.isActive) {
    //   startTimeout();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'check only $_timer',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12.0),
            if (!timer) MyButton(buttonText: "Start", onTap: _startTimer),
            const SizedBox(height: 12.0),
            if (timer) MyButton(buttonText: "Stop", onTap: _stopTimer),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  MyButton({this.buttonText = "", this.onTap});

  final VoidCallback onTap;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text(
            buttonText,
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
