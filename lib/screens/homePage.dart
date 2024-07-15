import 'package:coffee_app/resource/btns.dart';

import 'package:coffee_app/resource/list.dart';
import 'package:coffee_app/screens/upperScroller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  // PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size sized = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                //  color: brownColor,
                height: sized.height * 0.5,
                width: sized.width * 1,
                child: UpperScroller()),
            Btns(display1: "Drinks",display2:"Dounuts" ,),
            
            ListClass(),
          ],
        ),
      ),
    );
  }
}
