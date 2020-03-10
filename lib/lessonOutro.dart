import 'dart:ui';
import 'drawer.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare_actor.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LessonOutro extends StatefulWidget {
  final Widget child;
  LessonOutro({Key key, this.child}) : super(key: key);
  _LessonOutroState createState() => _LessonOutroState();
}

Color PrimaryColor = Color(0xff109618);
List<Color> exampleColors = <Color>[Colors.red, Colors.green, Colors.blue];

class _LessonOutroState extends State<LessonOutro> with FlareController {

  FlutterColorFill _fill;

  void initialize(FlutterActorArtboard artboard) {
    // Find our "Num 2" shape and get its fill so we can change it programmatically.
    FlutterActorShape shape = artboard.getNode("Num 2");
    _fill = shape?.fill as FlutterColorFill;
  }

  void setViewTransform(Mat2D viewTransform) {}

  bool advance(FlutterActorArtboard artboard, double elapsed) {
    // advance is called whenever the flare artboard is about to update (before it draws).
    Color nextColor = exampleColors[_counter % exampleColors.length];
    if (_fill != null) {
      _fill.uiColor = nextColor;
    }
    // Return false as we don't need to be called again. You'd return true if you wanted to manually animate some property.
    return false;
  }

  // We're going to use the counter to iterate the color.
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      // advance the controller
      isActive.value = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:
        PreferredSize(
          preferredSize: Size.fromHeight(150.0), // here the desired height
          child: new AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            elevation: 1.0,
            flexibleSpace: new FlareActor(
                "assets/images/largeTriang2.flr",
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
                controller: this
            ),
            title: new Row (
                children: [
                  new Container(
                    width: 60,
                    height: 60,
                    padding: const EdgeInsets.only(top: 20.0),
                    child: new FlareActor(
                        "assets/images/ranking.flr",
                        fit: BoxFit.contain,
                        controller: this
                    ),
                  ),
                ]
            ),
            actions: <Widget>[
              Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.only(right: 20.0, top: 20.0),
                child: new FittedBox(
                  fit: BoxFit.fill,
                  child: Icon(Icons.clear),
                ),
              )
            ],
          ),
        ),
        body: new Container(),
        bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: () {},
                ),
                new IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.add_box,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.favorite,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.account_box,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
        ));
  }
}