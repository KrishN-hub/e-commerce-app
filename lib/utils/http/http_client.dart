/*import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';

class THttpHelper {
  static const String _baseUrl = ''; //Replace with your api base urle
  //  Helper mathod  to make  a GET  request
  static Future<Map<String, dynamic>> get(String endpoint, dynamic data) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  // helper method to make a POST request
  static Future<Map<String, dynamic>> post(
      String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  // helper method to make a PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  //  Helper mathod  to make  a DELETE  request
  static Future<Map<String, dynamic>> delete(
      String endpoint, dynamic data) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  // Handle the HTTP request
  static Map<String, dynamic> _handleRespose(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data:${response.statusCode}');
    }
  }
} */
