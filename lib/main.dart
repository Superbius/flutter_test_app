import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/scheduler.dart';
import 'dart:convert';
import 'drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // ...
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test app'),
      ),
      drawer: DrawerMain(selected: "borders"),
      body: Center(child: Text("Select test in dropdown menu"))
        )
      );
  }
}




class Project {
  final String imageUrl;
  final String title;
  final String shortDesc;

  Project._({this.imageUrl, this.title, this.shortDesc});

  factory Project.fromJson(Map<String, dynamic> json) {
    return new Project._(
      imageUrl: json['imageUrl'],
      title: json['title'],
      shortDesc: json['shortDesc'],
    );
  }
}

class ProjectsPage extends StatefulWidget {
  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  List<Project> list = List();
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = new GlobalKey<RefreshIndicatorState>();

  Future _fetchData() async {
    final response = await http.get(
        "https://raw.githubusercontent.com/jhekasoft/flutter_demo/master/fake_api/project_list.json"
    );
    if (response.statusCode == 200) {
      setState(() {
        list = (json.decode(response.body) as List)
            .map((data) => new Project.fromJson(data))
            .toList();
      });
    } else {
      throw Exception('Failed to load projects');
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_){  _refreshIndicatorKey.currentState?.show(); });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Проекти'),
      ),
      drawer: DrawerMain(selected: "projects"),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: _fetchData,
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Image.network(
                      list[index].imageUrl,
                      fit: BoxFit.fitHeight,
                      width: 600.0,
                      height: 240.0,
                    ),
                    Text(
                      list[index].title,
                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      list[index].shortDesc,
                      style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}