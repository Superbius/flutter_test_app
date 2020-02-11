import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListTest extends StatefulWidget {
  final Widget child;
  ListTest({Key key, this.child}) : super(key: key);
  _ListTestState createState() => _ListTestState();
}

Color PrimaryColor = Color(0xff109618);

class _ListTestState extends State<ListTest> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: PrimaryColor,
          title: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text('LIST TESTS')
          ),
          bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 6.0,
          onTap: (index) {
            setState(() {
              switch (index) {
                case 0:
                  PrimaryColor = Color(0xffff5722);
                  break;
                case 1:
                  PrimaryColor = Color(0xff3f51b5);
                  break;
                case 2:
                  PrimaryColor = Color(0xffe91e63);
                  break;
                case 3:
                  PrimaryColor = Color(0xfae51e63);
                  break;
                case 4:
                  PrimaryColor = Color(0xfae22e13);
                  break;
                default:
              }
            });
          },
            tabs: <Widget>[
              Tab(
                child: Container(
                  child: Text(
                    'Simple',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Text(
                    'Infinite',
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
              _simpleList(),
              _infiniteList(),
              _svgList(),
              _lottieList(),
              _manyLottieList(),
            ]
          ),
        )
    );
  }
}


Widget _simpleList() {
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
                      Icon(Icons.all_out),
                      Text( "List element #" + position.toString(),
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