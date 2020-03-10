import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:async';

class InterpolatorsTest extends StatefulWidget{
    InterpolatorsTest ({Key key, this.curveType}) : super(key: key);
//
    final Curve curveType;

    _InterpolatorTestState createState() => _InterpolatorTestState();
}

class _InterpolatorTestState extends State<InterpolatorsTest>
  with SingleTickerProviderStateMixin {

  Animation<double> animation;
  Animation<double> animation1;
  Animation<double> animation2;
  Animation<double> animation3;
  Animation<double> animation4;
  Animation<double> animation5;
  Animation<double> animation6;
  Animation<double> animation7;
  Animation<double> animation8;
  Animation<double> animation9;
  Animation<double> animation10;
  AnimationController animController;
  List<Widget> animatedBlocks = new List(32);
  List<Animation> animationList = new List(32);


  void initState() {
    super.initState();
    List myCurves = [
      Curves.linear,
      Curves.easeInCubic,
      Curves.easeIn,
      Curves.ease,
      Curves.easeInCirc,
      Curves.easeInBack,
      Curves.decelerate,
      Curves.bounceInOut,
      Curves.bounceIn,
      Curves.bounceOut,
      Curves.easeInExpo,
      Curves.easeInOut,
      Curves.easeInOutBack,
      Curves.easeInOutCirc,
      Curves.easeInOutCubic,
      Curves.easeInOutExpo,
      Curves.easeInOutQuad,
      Curves.easeInOutQuart,
      Curves.easeInOutQuint,
      Curves.easeOutSine,
      Curves.easeInQuad,
      Curves.easeInQuart,
      Curves.easeInQuint,
      Curves.easeInSine,
      Curves.easeInToLinear,
      Curves.easeOutBack,
      Curves.slowMiddle,
      Curves.linearToEaseOut,
      Curves.fastOutSlowIn,
      Curves.fastLinearToSlowEaseIn,
      Curves.elasticOut,
      Curves.elasticInOut,
      Curves.elasticIn,
    ];
    animController = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );
    Tween animaRange = Tween<double>(
      begin: -1,
      end: 1
    );
    for(int i = 0; i < 32; i++) {
      animationList[i] = animaRange.animate(new CurvedAnimation(parent: animController, curve: Interval(0.2, 0.8, curve: myCurves[i])));
      animationList[i].addListener(() {
        setState(() {});
      });
    }
    animController.forward();
    animController.addStatusListener((status) {
      if(status == AnimationStatus.completed)
        animController.reverse();
      else if(status == AnimationStatus.dismissed)
        animController.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    for(int i = 0; i < 32; i++) {
      animatedBlocks[i] = new Container(
        width: 400,
          child: Stack(
              children: <Widget>[
              Align(
                child: Container(
                    margin: new EdgeInsets.all(10),
                    width: 100,
                    height: 50,
                    color: Colors.green,
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text("Animation")
                    )
                ),
                alignment: Alignment(animationList[i].value, 0),
              )
            ]
        )
      );
    }
    return new ListView(
      children: List.from(animatedBlocks),
    );
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}