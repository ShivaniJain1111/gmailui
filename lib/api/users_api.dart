import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:gmailui1/model/user.dart';
import 'package:http/http.dart' as http;

class UsersApi {
  static Future<List<User>> getUsersLocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final dataa = await assetBundle.loadString('assets/users.json');
    final body = json.decode(dataa);

    return body.map<User>(User.fromJson).toList();
  }

}
Future <List<Data>> fetchData() async {
  final response =
  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Data.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}

class Data {
  final int userId;
  final int id;
  final String title;

  Data({ required this.userId,  required this.id,  required this.title});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

