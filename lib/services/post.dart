import 'package:flutter_stateful/model/post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostService {
  static Future<Post> fetchPost() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/users/2');

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON.
      return Post.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
