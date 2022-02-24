import 'package:flutter/material.dart';

class SlideDots  extends StatelessWidget {
 bool isActive;
 SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.bottomCenter,
        duration: Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 4),
      height: isActive ? 10 : 6,
      width: isActive ? 10 : 6,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.black54,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
