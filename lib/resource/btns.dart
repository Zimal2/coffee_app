import 'package:flutter/material.dart';

class Btns extends StatelessWidget {
  String display1,display2;
   Btns({super.key,required this.display1,required this.display2});

  @override
  Widget build(BuildContext context) {
    Size sized = MediaQuery.of(context).size;

    return Container(
      height: sized.height * 0.06,
      width: double.infinity,
      child: Center(
        child: Row(
          children: [
            Container(
              width: 100,
              height: 40,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Text(
                display1
              )),
            ),
            SizedBox(
              width: sized.width * 0.02,
            ),
            //groups btn
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange[200]!, Colors.yellow],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: Text(
               display2
                // style:
                //     textMain.bodySmall!.copyWith(color: _textColor2),
              )),
            )
          ],
        ),
      ),
    );
  }
}
