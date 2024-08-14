import 'dart:convert';
import 'package:http/http.dart' as http;
import 'articulo.dart';

Future<List<Article>> fetchArticles() async {
  final response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=us&apiKey=c8fd0514ae44462bbefab022bd213b96'));

  if (response.statusCode == 200) {
    final List<dynamic> jsonData = json.decode(response.body)['articles'];
    return jsonData.map((json) => Article.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load articles');
  }
}
