import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  mybutton({this.label});
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Color(0xFFf18613),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: new Center(
          child: new Text(label!,
            style: TextStyle(fontSize: 22, color: Colors.white),
            textAlign: TextAlign.center,),
        )
    );
  }
}
