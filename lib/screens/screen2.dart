import 'package:coffee_app/resource/about.dart';
import 'package:coffee_app/resource/bottomsheet2.dart';
import 'package:coffee_app/resource/btns.dart';
import 'package:coffee_app/resource/colors.dart';
import 'package:coffee_app/resource/images.dart';
import 'package:coffee_app/resource/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

class Screen2 extends StatefulWidget {
  String imageurl;
  int index;
  Gradient screenColor;
  Screen2(
      {super.key,
      required this.screenColor,
      required this.index,
      required this.imageurl});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  PageController controller = PageController();
  int bottomSheetIndex = 0;
  double aboutContainer = 100.0;

  SolidController _controller = SolidController();
  @override
  Widget build(BuildContext context) {
    Size sized = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
           
            Stack(
              children: [
                Hero(
                  tag: "Ccolor ${widget.index}",
                  child: Container(
                    height: sized.height * 0.6,
                    decoration: BoxDecoration(
                      gradient: widget.screenColor,
                    ),
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child:  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back,color: whiteColor,)),),
                Positioned(
                  bottom: 10,
                  right: 90,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          scrollerText[widget.index],
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
            ),
            //Btns(display1: "Order Now", display2: "Add to cart"),
            Container(
              height: sized.height * 0.4,
            
             // color: Colors.grey.shade300,
              width: double.infinity,
              child:Padding(
                padding: const EdgeInsets.only(left: 60,top: 0),
                child: Btns(display1: "Order Now", display2: "Add to cart"),
              )
            )
          ],
        ),
      ),

      // CustomScrollView(
      //   slivers: [
      //     SliverAppBar(
      //       expandedHeight: 500.0,
      //       pinned: true,
      //       flexibleSpace: FlexibleSpaceBar(
      //         collapseMode: CollapseMode.parallax,
      //         expandedTitleScale: 1,
      //         title: Padding(
      //           padding: EdgeInsets.only(
      //               // left: sized.width * 0.05,
      //               right: 60,
      //               top: sized.height * 0.59),
      //           child: Column(
      //             children: [
      //               Center(
      //                 child: Text(
      //                   scrollerText[widget.index],
      //                   style: const TextStyle(
      //                     fontSize: 20,
      //                     fontWeight: FontWeight.w600,
      //                   ),
      //                 ),
      //               ),
      //               const Text("\$20.0")
      //             ],
      //           ),
      //         ),
      //         background: Hero(
      //           tag: "Ccolor ${widget.index}",
      //           child: Container(
      //             decoration: BoxDecoration(
      //               gradient: widget.screenColor,
      //             ),
      //             child: Center(
      //               child: Container(
      //                 height: sized.height * 0.5,
      //                 width: sized.width * 0.75,
      //                 //color: blackColor,
      //                 child: Image.asset(
      //                   widget.imageurl,
      //                   fit: BoxFit.cover,
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     SliverList(
      //       delegate: SliverChildBuilderDelegate(
      //         (context, index) {
      //           return Column(
      //             children: [
      //               Container(
      //                 height: 200,
      //                 width: double.infinity,
      //                 decoration: BoxDecoration(
      //                   color: colorList[widget.index],
      //                 ),
      //               ),
      // Positioned(
      //     left: 0,
      //     top: 30,
      //     child: InkWell(
      //       onTap: () {},
      //       child: Container(
      //         height: aboutContainer,
      //         width: sized.width * 1,
      //         decoration: BoxDecoration(
      //           borderRadius: const BorderRadius.only(
      //               topLeft: Radius.circular(35),
      //               topRight: Radius.circular(35)),
      //           color: colorList[widget.index],
      //         ),
      //         child: const Padding(
      //           padding: EdgeInsets.only(left: 20, top: 10),
      //           child: Text(
      //             "About",
      //             style: TextStyle(
      //                 color: whiteColor,
      //                 fontSize: 20,
      //                 fontWeight: FontWeight.bold),
      //           ),
      //         ),
      //       ),
      //     )),
      // Positioned(
      //     left: 0,
      //     top: 90,
      //     child: Container(
      //       height: 100,
      //       width: sized.width * 1,
      //       decoration: const BoxDecoration(
      //         borderRadius: BorderRadius.only(
      //             topLeft: Radius.circular(35),
      //             topRight: Radius.circular(35)),
      //         color: blackColor,
      //       ),
      //       child: const Padding(
      //         padding: EdgeInsets.only(left: 20, top: 20),
      //         child: Text(
      //           "Ingredients",
      //           style: TextStyle(
      //               color: whiteColor,
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //     )),
      // Positioned(
      //     left: 0,
      //     top: 160,
      //     child: Container(
      //       height: 100,
      //       width: sized.width * 1,
      //       decoration: const BoxDecoration(
      //         borderRadius: BorderRadius.only(
      //             topLeft: Radius.circular(35),
      //             topRight: Radius.circular(35)),
      //         color: whiteColor,
      //       ),
      //       child: Padding(
      //         padding: const EdgeInsets.only(left: 20, top: 20),
      //         child: Row(
      //           children: [
      //             const Text(
      //               "Order",
      //               style: TextStyle(
      //                   color: blackColor,
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold),
      //             ),
      //             SizedBox(
      //               width: sized.width * 0.55,
      //             ),
      //             const Text(
      //               "1",
      //               style: TextStyle(
      //                   color: blackColor,
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold),
      //             ),
      //             SizedBox(
      //               width: sized.width * 0.05,
      //             ),
      //             const Icon(CupertinoIcons.add_circled),
      //           ],
      //         ),
      //       ),
      //     )),
      //             ],
      //           );
      //         },
      //     //    childCount: 1, // Specify the number of children here
      //       ),
      //     )
      //   ],
      // ),
      bottomSheet: SolidBottomSheet(
      
        
          controller: _controller,
          draggableBody: true,
          maxHeight: MediaQuery.of(context).size.height * 0.5,
          headerBar: Card(

            child: Container(
              decoration: const BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              height: MediaQuery.of(context).size.height * 0.12,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  children: [
                    const Text(
                      "Order Details",
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: sized.width * 0.3,
                    ),
                    const Text(
                      "1",
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: sized.width * 0.05,
                    ),
                    const Icon(CupertinoIcons.add_circled),
                  ],
                ),
              ),
              //  Column(
              //   children: [
              // Container(
              //   height: 253,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: colorList[widget.index],
              //   ),
              // ),
              // Positioned(
              //     left: 0,
              //     top: 30,
              //     child: InkWell(
              //       onTap: () {
              //         setState(() {
              //           bottomSheetIndex = 1;
              //         });
              //       },
              //       child: Container(
              //         height: aboutContainer,
              //         width: sized.width * 1,
              //         decoration: BoxDecoration(
              //           borderRadius: const BorderRadius.only(
              //               topLeft: Radius.circular(35),
              //               topRight: Radius.circular(35)),
              //           color: colorList[widget.index],
              //         ),
              //         child: const Padding(
              //           padding: EdgeInsets.only(left: 20, top: 10),
              //           child: Text(
              //             "About",
              //             style: TextStyle(
              //                 color: whiteColor,
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.bold),
              //           ),
              //         ),
              //       ),
              //     )),
              //
              // Positioned(
              //     left: 0,
              //     top: 90,
              //     child: InkWell(
              //       onTap: () {
              //         setState(() {
              //           bottomSheetIndex = 2;
              //         });
              //       },
              //       child: Container(
              //         height: 100,
              //         width: sized.width * 1,
              //         decoration: const BoxDecoration(
              //           borderRadius: BorderRadius.only(
              //               topLeft: Radius.circular(35),
              //               topRight: Radius.circular(35)),
              //           color: blackColor,
              //         ),
              //         child: const Padding(
              //           padding: EdgeInsets.only(left: 20, top: 20),
              //           child: Text(
              //             "Ingredients",
              //             style: TextStyle(
              //                 color: whiteColor,
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.bold),
              //           ),
              //         ),
              //       ),
              //     )),
              // InkWell(
              //   onTap: () {
              //     setState(() {
              //       bottomSheetIndex = 3;
              //     });
              //   },
              //   child: Container(
              //     height: 100,
              //     width: sized.width * 1,
              //     decoration: const BoxDecoration(
              //       borderRadius: BorderRadius.only(
              //           topLeft: Radius.circular(35),
              //           topRight: Radius.circular(35)),
              //       color: whiteColor,
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.only(left: 20, top: 20),
              //       child: Row(
              //         children: [
              //           const Text(
              //             "Order",
              //             style: TextStyle(
              //                 color: blackColor,
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.bold),
              //           ),
              //           SizedBox(
              //             width: sized.width * 0.55,
              //           ),
              //           const Text(
              //             "1",
              //             style: TextStyle(
              //                 color: blackColor,
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.bold),
              //           ),
              //           SizedBox(
              //             width: sized.width * 0.05,
              //           ),
              //           const Icon(CupertinoIcons.add_circled),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // InkWell(
              //   onTap: () {
              //     setState(() {
              //       bottomSheetIndex = 2;
              //     });
              //   },
              //   child: Container(
              //     height: 100,
              //     width: double.infinity,
              //     child: BottomSheet2(),
              //   ),
              // )
              //   ],
              // )
            ),
          ),
          body: PageView.builder(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            reverse: true,
            controller: controller,
            itemCount: scrollerimages.length,
            itemBuilder: (context, index) {
              return About(
                index: widget.index,
                currentindex: widget.index,
              );
            },
          )
          //    About(index: widget.index,)

          ),
    );
  }
}
