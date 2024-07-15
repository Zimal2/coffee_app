import 'package:coffee_app/resource/colors.dart';
import 'package:coffee_app/resource/images.dart';
import 'package:coffee_app/resource/text.dart';
import 'package:flutter/material.dart';

class ListClass extends StatelessWidget {
  const ListClass({super.key});

  @override
  Widget build(BuildContext context) {
    Size sized = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
     height: MediaQuery.of(context).size.height * 0.9,
      decoration: const BoxDecoration(
       // color: brownColor,
       
      ),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: listimages.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: sized.height * 0.15,
                  width: sized.width * 1,
                  // color: Colors.amber,
                  child: Row(
                    children: [
                      Container(
                        width: sized.width * 0.3,
                        height: sized.height * 0.15,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          child: Image.asset(
                            listimages[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              scrollerText[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 17),
                            ),
                            const Text("\$20.0"),
                          
                            Padding(
                              padding:  EdgeInsets.only(left: sized.width*0.3,top: sized.height*0.03),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  Text("4.3"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.white,
                thickness: 1.0, // specify the thickness of the line
                indent: 20, // specify the indent or margin from the left
                endIndent:
                    20, // specify the endIndent or margin from the right
              )
            ],
          );
      
          // ListTile(
          //   leading: Container(
          //     width: 90,
          //     height: 90,
          //     child: Image.asset(
          //       listimages[index],
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          //   title:
          // Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(scrollerText[index])
      
          //       ,
          //       const Row(
          //         children: [
          //           Icon(
          //             Icons.star,
          //             color: Colors.orange,
          //           ),
          //           Text("4.3"),
      
          //         ],
          //       )
          //     ],
          //   ),
      
          // ),
        },
      ),
    );
  }
}
