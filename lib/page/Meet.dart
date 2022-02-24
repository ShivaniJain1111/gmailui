import 'package:flutter/material.dart';
import 'package:gmailui1/Widget/SlideItem.dart';
import 'package:gmailui1/Widget/slide_dots.dart';
import 'package:gmailui1/model/slide.dart';

class Meet extends StatefulWidget {


  @override
  _MeetState createState() => _MeetState();
}

class _MeetState extends State<Meet> {
   int? currentPageValue;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                size: 30,
              ),
              Text(
                'Meet',
                style: TextStyle(fontSize: 20),
              ),
              CircleAvatar(
                radius: 16.0,
                backgroundColor: Colors.blue,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 170,
                height: 40,
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.black)),
                    onPressed: () {},
                    child: Text('New meeting')),
              ),
              Container(
                width: 170,
                height: 40,
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.black)),
                    onPressed: () {},
                    child: Text('Join a meeting')),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
            PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: slideList.length,
              itemBuilder: (ctx, i) => SlideItem(i),
              onPageChanged: (int page) {
                getChangedPageAndMoveBar(page);
              },
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < slideList.length; i++)
                        if (i == currentPageValue)
                          SlideDots(true)
                        else
                          SlideDots(false)
                    ],
                  ),
                )
              ],
            )
          ]),
        ),
      ],
    ));
  }

  void getChangedPageAndMoveBar(int page) {
    currentPageValue = page;
    setState(() {});
  }
}
