import 'package:coffee_app/resource/colors.dart';
import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

class BottomSheet2 extends StatelessWidget {
  BottomSheet2({super.key});
  SolidController _controller = SolidController();

  @override
  Widget build(BuildContext context) {
    Size sized = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.transparent,
        bottomSheet: SolidBottomSheet(
          controller: _controller,
          draggableBody: true,
          maxHeight: MediaQuery.of(context).size.height * 0.09,
          headerBar: Container(
            height: 70,
            width: sized.width * 1,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              color: blackColor,
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                "Ingredients",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          body: Container(
            color: Colors.blue,
            width: double.infinity,
            height: 500,
            child: Text("hi im im in ingredients"),
          ),
        ));
  }
}
