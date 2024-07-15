import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee_app/resource/colors.dart';
import 'package:coffee_app/resource/images.dart';
import 'package:coffee_app/resource/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeSheet extends StatefulWidget {
  int  currentindex;
  Gradient screenColor;
  String imageurl;
  CoffeeSheet({super.key,required this.imageurl, required this.currentindex,required this.screenColor});

  @override
  State<CoffeeSheet> createState() => _CoffeeSheetState();
}

class _CoffeeSheetState extends State<CoffeeSheet> {
  @override
  Widget build(BuildContext context) {
    Size sized = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: sized.height * 0.6,
        width: sized.width * 1,
        color: colorList[widget.currentindex],
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: CarouselSlider.builder(
              itemCount: scrollerimages.length,
              itemBuilder: (context, index, realIndex) {
                return Stack(
            children: [
              Hero(
                tag: "Ccolor ${widget.currentindex}",
                child: Container(
                  height: sized.height * 0.6,
                  decoration: BoxDecoration(
                    gradient: widget.screenColor,
                  ),
                  width: double.infinity,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 90,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        scrollerText[widget.currentindex],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text("\$20.0")
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 50,
                child: Center(
                  child: Container(
                    height: sized.height * 0.5,
                    width: sized.width * 0.75,
                    //color: blackColor,
                    child: Image.asset(
                      widget.imageurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          );
              },
              options: CarouselOptions(
                height: 400,
                onPageChanged: (index, reason) {
                  setState(() {
                    widget.currentindex = index;
                  });
                },
                aspectRatio: 1.2,
                autoPlay: false,
                enlargeCenterPage: false,
                initialPage: 0,
                viewportFraction: 1,
                reverse: true,
                scrollDirection: Axis.horizontal,
                // enlargeFactor: 20
              ),
            )),
      ),
    );
  }
}
