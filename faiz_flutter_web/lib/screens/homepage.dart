//
//  Created by Faiz Ikhwan on 26 October 2019.
//  Copyright © 2019 Faiz Ikhwan. All rights reserved.
//

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:faiz_flutter_web/screens/work.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print("width: $width");
    print("height: $height");

    return Scaffold(
      body: Container(
        color: Color(0xFF3a364f),
        child: Center(
          child: Container(
            width: width/2,
            height: height/2,
            child: Card(
              color: Color(0xFF22202F),
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.only(top: height/6),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Container(
                          margin: EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            "Faiz Ikhwan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 38.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            "Mobile Apps Developer",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(2.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Icon(
                                FontAwesomeIcons.github,
                                color: Color(0xFF3a364f),
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "github.com/FaizIkhwan",
                                  style: TextStyle(
                                    color: Colors.white70,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(2.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Icon(
                                FontAwesomeIcons.linkedin,
                                color: Color(0xFF3a364f),
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "linkedin.com/in/faizikhwan",
                                  style: TextStyle(
                                    color: Colors.white70,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(2.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Icon(
                                Icons.email,
                                color: Color(0xFF3a364f),
                              ),

                              Container(
                                margin: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "me@faizikhwan.com",
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
                  ),

                  Visibility(
                    visible: height > 650,
                    child: Container(
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 20.0, right: 20.0,),
                      child: Text(
                        "Built using Flutter",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
