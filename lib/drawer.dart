
import 'package:flutter/material.dart';
import 'borders.dart';
import 'animation.dart';
import 'text.dart';
import 'listTest.dart';
import 'svgTest.dart';
import 'lessonOutro.dart';

class DrawerMain extends StatefulWidget {
  DrawerMain ({Key key, this.selected}) : super(key: key);

  final String selected;

  @override
  DrawerMainState createState() {
    return DrawerMainState();
  }
}

class DrawerMainState extends State<DrawerMain> {
  @override
  Widget build (BuildContext context) {
    return Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text(
                  'Flutter tests',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
              ),
              ListTile(
                selected: widget.selected == 'main',
                leading: Icon(Icons.blur_circular),
                title: Text('Lesson Outro'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LessonOutro())
                  );
                },
              ),
              ListTile(
                selected: widget.selected == 'borders',
                leading: Icon(Icons.blur_circular),
                title: Text('Borders and shadow'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BordersTest())
                  );
                },
              ),
              ListTile(
                selected: widget.selected == 'text',
                leading: Icon(Icons.blur_circular),
                title: Text('Text test'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TextTest()),
                  );
                },
              ),
              ListTile(
                selected: widget.selected == 'list',
                leading: Icon(Icons.blur_circular),
                title: Text('List test'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListTest())
                  );
                },
              ),
              ListTile(
                selected: widget.selected == 'svgAndLottie',
                leading: Icon(Icons.blur_circular),
                title: Text('Svg and lottie tests'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SvgTest())
                  );
                },
              ),
              ListTile(
                selected: widget.selected == 'animation',
                leading: Icon(Icons.blur_circular),
                title: Text('Animation test'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AnimationTestPage())
                  );
                },
              ),
            ]
        )
    );
  }
}