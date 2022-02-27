import 'dart:convert';

import 'package:http/http.dart' as http;

class RequestUtil {
  static RequestUtil? _instance;

  static const String baseUrl = 'http://127.0.0.1:8080';

  RequestUtil._internal() {
    _instance = this;
  }

  factory RequestUtil() => _instance ?? RequestUtil._internal();

  static Future<T> get<T>(String uri) async {
    final response = await http.get(Uri.parse(baseUrl + uri));
    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      print(utf8.decode(response.bodyBytes));
      throw Exception("请求错误");
    }
  }
}
