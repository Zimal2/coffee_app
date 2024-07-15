import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee_app/resource/colors.dart';
import 'package:coffee_app/resource/images.dart';
import 'package:coffee_app/resource/text.dart';
import 'package:coffee_app/screens/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpperScroller extends StatefulWidget {
  UpperScroller({
    Key? key,
  }) : super(key: key);

  @override
  State<UpperScroller> createState() => UpperScrollerState();
}

class UpperScrollerState extends State<UpperScroller> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    Size sized = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          
          height: sized.height * 0.5,
          width: sized.width * 1,
          // color: Colors.amber,
        ),
        Positioned(
          child: Stack(
            children: [
              Container(
                height: sized.height * 0.4,
                width: sized.width * 1,
                //    color: Colors.redAccent,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(seconds: 1),
                        pageBuilder: (_, __, ___) => Screen2(
                          imageurl: scrollerimages[currentindex],
                            screenColor: scrollerColors[currentindex],
                            index: currentindex)),
                  );
                },
                child: Hero(
                  tag: "Ccolor ${currentindex}",
                  child: Container(
                    height: sized.height * 0.3,
                    width: sized.width * 1,
                    decoration: BoxDecoration(
                      gradient: scrollerColors[currentindex],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(150),
                        bottomRight: Radius.circular(150),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            CupertinoIcons.list_bullet_indent,
                            color: whiteColor,
                          ),
                          SizedBox(
                            width: sized.width * 0.6,
                          ),
                          Icon(CupertinoIcons.search_circle, color: whiteColor),
                          SizedBox(
                            width: sized.width * 0.05,
                          ),
                          Icon(CupertinoIcons.shopping_cart, color: whiteColor),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: sized.height * 0.02,
                right: sized.width * 0.01,
                child: Container(
                  height: 200,
                  width: sized.width * 1,
                  // color: Colors.black,
                  child: CarouselSlider.builder(
                    itemCount: scrollerimages.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        height: 200,
                        width: sized.width * 0.5,
                        child: Image.asset(scrollerimages[index]),
                      );
                    },
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentindex = index;
                        });
                      },
                      aspectRatio: 1.2,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      initialPage: 0,
                      viewportFraction: 0.5,
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      // enlargeFactor: 20
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: sized.height * 0.01,
          right: sized.width * 0.15,
          child: Container(
            height: sized.height * 0.12,
            width: sized.width * 0.7,
            //  color: whiteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    scrollerText[currentindex],
                    style: TextStyle(
                      color: brownColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "\$ 20.0",
                    style: TextStyle(
                      color: blackColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static RectTween _createRectTween(Rect begin, Rect end) {
    return CircularRectTween(begin: begin, end: end);
  }
}

class CircularRectTween extends RectTween {
  CircularRectTween({required Rect begin, required Rect end})
      : super(begin: begin, end: end) {}

  @override
  Rect lerp(double t) {
    final double? width = lerpDouble(begin?.width, end?.width, t);
    double startWidthCenter = begin!.left + (begin!.width / 2);
    double startHeightCenter = begin!.top + (begin!.height / 2);

    return Rect.fromCircle(
        center: Offset(startWidthCenter, startHeightCenter),
        radius: width! * 1.7);
  }
}
