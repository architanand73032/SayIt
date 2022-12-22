import 'package:flutter/material.dart';
import 'package:untitled1/methods.dart';

class Homescreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Room"),
        backgroundColor: Color(0xFFf18613),
      ),

      body:
      Padding(
        padding: const EdgeInsets.only(right: 16.0,left: 16.0,top:15),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFf18613)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFf18613))
            ) ,
            border: OutlineInputBorder(),
            labelText: 'Search',

            suffixIcon: Icon(Icons.search,
              color: Color(0xFFf18613),
            ),

          ),
        ),
      ),
    );
  }
}
/*
 Center(
      child:TextButton(
        onPressed: () => logOut(context),
        child: Text("LogOut"),
      ),
    )
 */
