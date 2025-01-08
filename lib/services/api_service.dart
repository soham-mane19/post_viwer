import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../models/postmodel.dart';


class ApiService {
  static const String _url = 'https://api.hive.blog/';

  Future<List<Post>> fetchPosts() async {
    final response = await http.post(
      Uri.parse(_url),
      headers: {
        'accept': 'application/json, text/plain, */*',
        'content-type': 'application/json',
      },
      body: json.encode({
        "id": 1,
        "jsonrpc": "2.0",
        "method": "bridge.get_ranked_posts",
        "params": {"sort": "trending", "tag": "", "observer": "hive.blog"}
      }),
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['result'];
      print("data is this ${data[0]['title']}");
      return data.map((post) => Post.fromJson(post)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
