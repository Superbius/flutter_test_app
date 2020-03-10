import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:async';

class MultipleAnimations extends StatefulWidget{
  MultipleAnimations ({Key key, this.curveType}) : super(key: key);
//
  final Curve curveType;

  _MultipleAnimationsState createState() => _MultipleAnimationsState();
}

class _MultipleAnimationsState extends State<MultipleAnimations>
    with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController animController;


  void initState() {
    super.initState();
    animController = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );
    Tween animaRange = Tween<double>(
        begin: -1,
        end: 1
    );
    animation = animaRange.animate(animController);
    animation.addListener(() {
        setState(() {});
      });
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
    return new Container(
      width: 10,
      height: 10,
      child: Transform.rotate(
        angle: math.pi * animation.value,
        alignment: Alignment(0, 0),
        child: Container(
          width: 10,
          height: 10,
          color: Colors.green,
          child: const Text('Apartment for rent!'),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}