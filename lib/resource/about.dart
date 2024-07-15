import 'package:carousel_slider/carousel_slider.dart';
import 'package:coffee_app/resource/colors.dart';
import 'package:coffee_app/resource/images.dart';
import 'package:flutter/cupertino.dart';

class About extends StatefulWidget {
  int index, currentindex;
  About({super.key, required this.index, required this.currentindex});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
                return const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: whiteColor),
                    ),
                    Text(
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: whiteColor),
                        "memorize}[keys])=>reusing its cached result if the inputs remain the same13-useRef(): changes made but not shown on screen, just like useState() changes made but changes not shown,although they are stored on back and can be used lateruseref contain an object, white usestate contain a variable-instead of texteditingcontroller() usetexteditingcontroller(text:"
                        ") useRef() is just like useMemoized but usemem rem the output of func cache in short memory whenever func called takes the stored output and use  it but useref rem the func not the outputif any change needed in values add keys 16-useContext use it where you cant use context,like outside build , example: mediaquery.of(useContext()).size.height 17-useValueChanged(): make a callback, give old value and old result"),
                    Text(
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: whiteColor),
                        "memorize}[keys])=>reusing its cached result if the inputs remain the same13-useRef(): changes made but not shown on screen, just like useState() changes made but changes not shown,although they are stored on back and can be used lateruseref contain an object, white usestate contain a variable-instead of texteditingcontroller() usetexteditingcontroller(text:"
                        ") useRef() is just like useMemoized but usemem rem the output of func cache in short memory whenever func called takes the stored output and use  it but useref rem the func not the outputif any change needed in values add keys 16-useContext use it where you cant use context,like outside build , example: mediaquery.of(useContext()).size.height 17-useValueChanged(): make a callback, give old value and old result")
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
