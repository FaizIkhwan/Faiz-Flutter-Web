//
//  Created by Faiz Ikhwan on 26 October 2019.
//  Copyright © 2019 Faiz Ikhwan. All rights reserved.
//

import 'dart:async';
import 'package:faiz_flutter_web/models/project.dart';
import 'package:flutter/material.dart';
import 'package:faiz_flutter_web/data/data.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {

  List<Project> projects = Data.projects;
  List<int> _pos = List<int>.filled(Data.projects.length, 0);
  Timer _timer;

  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 5), (_timer) {
      setState(() {
        for(int i=0; i<projects.length; i++) {
          _pos[i] = (_pos[i] + 1) % projects[i].gifName.length;
          print("pos[${i}]: ${_pos[i]}");
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    _timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF3a364f),
          child: Center(
            child: Container(
              width: width/2,
              child: Column(
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.only(top: 40.0, bottom: 30.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Portfolio",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  Column(
                    children: getProjectCard(width),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> getProjectCard(double width) {
    List<Widget> cards = List<Widget>();
    
    for(int i=0; i<projects.length; i++) {
      print("projects[${i}].gifName[_pos[${i}]]: ${projects[i].gifName[_pos[i]]}");
      Widget card = Container(
        margin: EdgeInsets.only(top: 7.0, bottom: 7.0),
        child: Card(
          color: Color(0xFF22202F),
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Container(
                margin: EdgeInsets.only(left: 20.0, top: 30.0, bottom: 30.0, right: 50.0),
                child: Image.asset(
                  "${projects[i].gifName[_pos[i]]}",
                  scale: 2.5,
                  gaplessPlayback: true,
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Project name: ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23.0,
                          ),
                        ),

                        Container(
                          child: Text(
                            "${projects[i].projectName}",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Stack: ",
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          child: Text(
                            "${projects[i].projectStack.join(", ")}",
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "About: ",
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: width/6,
                          child: Text(
                            "${projects[i].projectAbout}",
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      );
      cards.add(card);
    }
    return cards;
  }
  
}

