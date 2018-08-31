import 'package:flutter/material.dart';
import 'package:http/http.dart';
class Secondpage  extends StatelessWidget {
  String playType;
  Secondpage(this.playType);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('secondpade'),),
    body: new Container(
      padding: new EdgeInsets.all(32.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text('This is home screen,$playType'),
          ],
        )
      ),
    ),
    );
  }
}