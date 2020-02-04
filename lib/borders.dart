import 'package:flutter/material.dart';
import 'drawer.dart';

class BordersTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Borders and shadows test'),
      ),
      drawer: DrawerMain(selected: "borders"),
      body: Center(
        child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.red),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    //              ),
                    child: Align (
                        alignment: Alignment.center,
                        child: Text(
                            'r: 10',
                            style: TextStyle(color: Color(0xFF000000))
                        )
                    ),
                  ),

                  Container(
                      width: 100,
                      height: 30,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(width: 2, color: Colors.red
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),)
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                            'topLeft',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Color(0xFF000000))
                        ),
                      )
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 30,
                    decoration: new BoxDecoration(
                      border: Border.all(width: 2, color: Colors.red),
                      borderRadius: BorderRadius.vertical(top: Radius.elliptical(20, 5), bottom:Radius.elliptical(20, 5)),
                      color: Colors.grey,
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                    child: Align (
                        alignment: Alignment.center,
                        child: Text(
                            'elipse',
                            style: TextStyle(color: Color(0xFF000000))
                        )
                    ),
                  ),
                  Container(
                      width: 100,
                      height: 30,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(width: 2, color: Colors.red
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),)
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                            'topRight',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Color(0xFF000000))
                        ),
                      )
                  ),
                ],
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 50,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child:Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 100,
                                height: 30,
                                decoration: new BoxDecoration(
                                  border: Border.all(width: 5, color: Colors.red.withOpacity(0.5)),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                ),
                                margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                                child: Align (
                                  alignment: Alignment.center,
                                  child:FittedBox(fit:BoxFit.fitWidth,
                                      child: Text(
                                        'border transparent',
                                        style: TextStyle(color: Color(0xFF000000)),
                                        overflow: TextOverflow.ellipsis,
                                      )
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 30,
                                decoration: new BoxDecoration(
                                  border: Border.all(width: 5, color: Colors.red),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                                child: Align (
                                  alignment: Alignment.center,
                                  child:FittedBox(fit:BoxFit.fitWidth,
                                      child: Text(
                                        'bg transparent',
                                        style: TextStyle(color: Color(0xFF000000)),
                                        overflow: TextOverflow.ellipsis,
                                      )
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 30,
                                decoration: new BoxDecoration(
                                  border: Border.all(width: 5, color: Colors.red.withOpacity(0.6)),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.6),
                                ),
                                margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                                child: Align (
                                  alignment: Alignment.center,
                                  child: FittedBox(fit:BoxFit.fitWidth,
                                      child: Text(
                                        'all transparent',
                                        style: TextStyle(color: Color(0xFF000000)),
                                        overflow: TextOverflow.ellipsis,
                                      )
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          width: 100,
                          height: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(width: 2, color: Colors.red
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight:  Radius.elliptical(20, 15),
                                bottomRight:  Radius.elliptical(40, 30),
                                bottomLeft:  Radius.elliptical(65, 50),
                              )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                                'combo',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Color(0xFF000000))
                            ),
                          )
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 50,
                            color: Colors.yellow,
                            child: FittedBox(fit:BoxFit.fitWidth,
                                child: Text(
                                  'Original size test',
                                  style: TextStyle(color: Color(0xFF000000)),
                                  overflow: TextOverflow.ellipsis,
                                )
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                border: Border.all(width: 10, color: Colors.red.withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(500)
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          width: 100,
                          height: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(width: 2, color: Colors.red
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight:  Radius.elliptical(20, 15),
                                bottomRight:  Radius.elliptical(40, 30),
                                bottomLeft:  Radius.elliptical(65, 50),
                              )
                          ),
                          child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  color: Colors.green,
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  color: Colors.blue,
                                ),
                                Container(),
                              ]
                          )
                      ),
                      Stack(
                        overflow: Overflow.clip,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.yellow,
                          ),
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 2,
                                    offset: Offset(5, 5), // changes position of shadow
                                  ),
                                ],
                                color: Colors.grey,
                                border: Border.all(width: 2, style: BorderStyle.solid, color: Colors.black),
                                borderRadius: BorderRadius.circular(30)
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ]
        ),
      ),
    );
  }
}