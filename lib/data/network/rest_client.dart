import 'dart:convert';
import 'dart:developer' as developer;

import 'package:http/http.dart' as http;

class RestClient {
  final JsonDecoder _decoder = JsonDecoder();

  // GET
  Future<dynamic> get(String url) {
    return http.get(url).then((http.Response response) {
      final String body = response.body;
      final int statusCode = response.statusCode;
      final Map<String, String> headers = response.headers;

      developer.log(body, name: url, error: jsonEncode(body));

      return json.decode(body);
    });
  }

  Future<dynamic> post(String url, {Map headers, body, encoding}) {
    return http
        .post(url, body: body, headers: headers, encoding: encoding)
        .then((http.Response response) {
      final String body = response.body;
      final int statusCode = response.statusCode;
      final Map<String, String> headers = response.headers;

      developer.log(body, name: url, error: jsonEncode(body));

      return json.decode(body);
    });
  }
}
