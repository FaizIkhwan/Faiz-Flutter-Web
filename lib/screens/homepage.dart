import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: CircleAvatar(
                      backgroundImage: ExactAssetImage("assets/images/user.png"),
                      radius: height/8,
                    ),
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      Text("test"),

                    ],
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
