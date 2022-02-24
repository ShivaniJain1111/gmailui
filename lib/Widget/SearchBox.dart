import 'package:flutter/material.dart';

Widget SearchBox(String SearchText)
{
  return Column(
      children: [
         Material(
             color: Colors.blue[50],
             shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: TextFormField(
                      decoration: InputDecoration(
                        hintText:SearchText,
                        hintStyle: TextStyle(color: Colors.black54,fontSize: 16),
                        border: InputBorder.none,

                        icon: Container(
                          margin: EdgeInsets.only(left: 15,bottom: 4),
                          child: Icon(Icons.menu,color: Colors.black87,),
                        ),



                        suffixIcon:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                              radius: 12.0,
                                backgroundColor: Colors.deepOrange,
                              ),
                        ),

                        ),

                      )
    ),

      ],



  );

}