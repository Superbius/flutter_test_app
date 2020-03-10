import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'interpolatorsTest.dart';
import 'multipleAnimation.dart';

class AnimationTestPage extends StatelessWidget {

  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text('Animation tests')
            ),
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 6.0,
              tabs: <Widget>[
                Tab(
                  child: Container(
                    child: Text(
                      'Interpolators',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'Multiple animation to 1 view',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'With svg',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'With lottie',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'A lot of lottie',
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
              children: [
                InterpolatorsTest(),
                MultipleAnimations(),
                _svgList(),
                _lottieList(),
                _manyLottieList(),
              ]
          ),
        )
    );
  }
}

Widget _infiniteList() {
  return Center(
      child: ListView.builder(
          itemBuilder: (context, position)
          {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Row(
                      children: [
                        Icon(Icons.accessibility),
                        Text( "List element " + position.toString(),
                          style: TextStyle(
                              fontSize: 22.0
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            );
          }
      )
  );
}

Widget _svgList() {
  return Center(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, position)
          {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                      children: [
                        Text( position.toString(),
                          style: TextStyle(
                              fontSize: 22.0
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            'assets/images/abcIcon.svg',
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            'assets/images/acCreditIcon.svg',
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            'assets/images/acOfficeIcon.svg',
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            'assets/images/activityHistoryIcon.svg',
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: SvgPicture.asset(
                            'assets/images/question.svg',
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            );
          }
      )
  );
}

Widget _lottieList() {
  return Center(
      child: ListView.builder(
          itemBuilder: (context, position)
          {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Lottie.asset(
                            "assets/images/circles.json",
                          ),
                        ),

                        Text( "List element " + position.toString(),
                          style: TextStyle(
                              fontSize: 22.0
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            );
          }
      )
  );
}

Widget _manyLottieList() {
  return Center(
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, position)
          {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Row(
                      children: [
                        Text(
                          position.toString(),
                          style: TextStyle(
                              fontSize: 22.0
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Lottie.asset(
                            "assets/images/circles.json",
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Lottie.asset(
                            "assets/images/highScoreStamp.json",
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Lottie.asset(
                            "assets/images/particles.json",
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Lottie.asset(
                            "assets/images/scoreProgress.json",
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Lottie.asset(
                            "assets/images/starBig.json",
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            );
          }
      )
  );
}