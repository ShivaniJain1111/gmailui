import 'package:flutter/material.dart';

Widget title(String headline)
{
  return Padding(
    padding: const EdgeInsets.only(top: 5,left: 18,right: 18),
    child: Container(
        alignment: Alignment.centerLeft,
        child: Text(headline,style: TextStyle(
            fontSize: 15,fontWeight:FontWeight.bold),textAlign: TextAlign.left,)),
  );
}