import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dataModel.dart';

final String url =
    "https://raw.githubusercontent.com/dixitsoham7/dixitsoham7.github.io/main/index.json";

List<Employee> parseUser(String responseBody) {
  // var list = json.decode(responseBody);
  var users = User.fromJson(json.decode(responseBody));
  return users.employees;
}

Future<List<Employee>> fetchUsers() async {
  final http.Response response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return compute(parseUser, response.body);
  } else {
    throw Exception(response.statusCode);
  }
}
