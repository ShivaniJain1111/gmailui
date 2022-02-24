import 'package:flutter/material.dart';
import 'package:gmailui1/model/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;

  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(slideList[index].imageUrl),
            radius: 100,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 35, right: 35, top: 20, bottom: 15),
            child: Container(
              child: Text(
                slideList[index].title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.black87,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 63, right: 63),
            child: Container(
              child: Text(
                slideList[index].description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
