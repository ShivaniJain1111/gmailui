import 'package:flutter/material.dart';


class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

  final slideList = [
    Slide(
      imageUrl: 'https://www.xda-developers.com/files/2017/07/Hangouts-Meet-Green.png',
      title: 'Get a link that you can share',
      description: 'Tap New Meeting to get a link that you can send to people that you want to meet with',
    ),
    Slide(
      imageUrl: 'https://www.xda-developers.com/files/2017/07/Hangouts-Meet-Green.png',
      title: 'Your meeting is safe',
      description: 'No one outside of your organisation can join a meeting unless invited or admitted by the host',
    )
  ];
