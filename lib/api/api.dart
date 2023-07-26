import 'package:api_http/models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<User>> getUsers(int count) async {
  Uri url = Uri.https("randomuser.me", "/api", {'results': '$count'});

  http.Response response = await http.get(url);
  Map<String, dynamic> body = jsonDecode(response.body);
  
  List<User> users = [];

  for (int i = 0; i < body['results'].length; i++) {
    users.add(User.fromJson(body['results'][i]));
  }

  return users;
}
