import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/todo.dart';

class ApiService {
  final url = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<Todo>> fetchData() async {
    print('fetching data....');
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List<dynamic> list = json.decode(response.body);
      print(list.length);
      return list.map((json) => Todo.fromJson(json)).toList();
    } else {
      throw Exception('failed to load todos');
    }
  }
}
