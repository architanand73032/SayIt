import 'dart:ffi';

import 'package:flutter/material.dart';

class textfield extends StatelessWidget {

  textfield({this.label,this.obsecure});
  final String? label;
  final Bool? obsecure;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 32.0,left: 32.0),
      child: TextField(
        onChanged: (value) {
        },
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black87)
          ),
          border: OutlineInputBorder(),
          labelText: label,

        ),
      ),
    );
  }
}
