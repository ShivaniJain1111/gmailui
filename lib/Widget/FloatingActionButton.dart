import 'package:flutter/material.dart';

Widget FloatingButton(IconData icon)
{
  return  FloatingActionButton(
      shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14)),
          onPressed: () {  },
          child: Icon(icon),

  );
}