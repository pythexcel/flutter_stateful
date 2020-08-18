import 'dart:convert';
import 'package:flutter_stateful/services/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stateful/model/user.dart';
import 'package:flutter_stateful/model/post.dart';

class AMCSummaryData extends StatefulWidget {
  @override
  State<AMCSummaryData> createState() {
    return AMCSummary();
  }
}

class AMCSummary extends State<AMCSummaryData> {
  String textToDisplay = "";
  bool showLoader = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                showLoader ? CircularProgressIndicator() : Container(),
                Text("$textToDisplay "),
                Text(
                  "Mutual Fund AMC's",
                  style: Theme.of(context).textTheme.title,
                ),
                Text("21 AMC's in DB"),
                Text("15 AMC's in DB"),
                Text("17th July, last amc cron pass"),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  child: Text("Test JSON"),
                  onPressed: () {
                    String jsonString =
                        "{\"name\": \"John Smith\",\"email\": \"john@example.com\"}";

                    User user = User.fromJson(jsonDecode(jsonString));
                    print('Howdy, ${user.name}!');
                    print('We sent the verification link to ${user.email}.');
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  child: Text("Test JSON"),
                  onPressed: () async {
                    Post post = await PostService.fetchPost();
                    print(post.name);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  child: Text("Test Rest Api"),
                  onPressed: () async {
                    setState(() {
                      showLoader = true;
                      textToDisplay = "";
                    });
                    Post post = await PostService.fetchPost();

                    setState(() {
                      showLoader = false;
                      textToDisplay = post.name;
                    });
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// class AMCWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[AMCSummary()],
//     );
//   }
// }
