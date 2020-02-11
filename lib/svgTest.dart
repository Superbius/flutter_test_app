import 'package:flutter/material.dart';

class SvgTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Svg and Lottie test'),
      ),
      body: ColorFiltered(
        colorFilter: ColorFilter.matrix(<double>[
          0.2126, 0.7152, 0.0722, 0, 0,
          0.2126, 0.7152, 0.0722, 0, 0,
          0.2126, 0.7152, 0.0722, 0, 0,
          0,      0,      0,      1, 0,
        ]),
        child: Row(
          children: <Widget>[
            SizedBox(
                height: 50,
                width: 50,
                child: Container(
                  color: Colors.red,
                )
            ),
            SizedBox(
                height: 50,
                width: 50,
                child: Container(
                  color: Colors.green,
                )
            ),
            SizedBox(
                height: 50,
                width: 50,
                child: Container(
                  color: Colors.blue,
                )
            ),
            SizedBox(
                height: 50,
                width: 50,
                child: Container(
                  color: Colors.cyan,
                )
            ),
            SizedBox(
                height: 50,
                width: 50,
                child: Container(
                  color: Colors.purple,
                )
            ),
            SizedBox(
                height: 50,
                width: 50,
                child: Container(
                  color: Colors.white,
                )
            ),
            SizedBox(
                height: 50,
                width: 50,
                child: Container(
                  color: Colors.black,
                )
            ),
          ],
        ),

      ),
    );
  }
}