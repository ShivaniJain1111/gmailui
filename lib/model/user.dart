import 'package:meta/meta.dart';

class User {
  final String username;
  final String email;
  final String urlAvatar;
  final String date;

  const User({
    required this.username,
    required this.email,
    required this.urlAvatar,
    required this.date,
  });

  static User fromJson(json) => User(
        username: json['username'],
        email: json['email'],
        urlAvatar: json['urlAvatar'],
        date:json['date'],
      );
}
