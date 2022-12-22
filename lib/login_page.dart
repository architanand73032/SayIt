import 'package:flutter/material.dart';
import 'package:untitled1/homescreen.dart';
import 'package:untitled1/my_button.dart';
import 'package:untitled1/register_page.dart' ;
import 'mytextfield.dart';
import 'methods.dart';

class login extends StatefulWidget {


  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String? name;
  String? password;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1752a4),
      body: isLoading? Center(
        child: CircularProgressIndicator(),
      ):Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Image(image: AssetImage("images/login.png"),
          ),

          //
          SizedBox(height: 2.0,),


          //welcome back
          Text('Welcome Back, User',
            style:TextStyle(
                color: Colors.white,
                fontSize: 16.0
            ) ,
          ),

          //
          SizedBox(height: 25.0,),

          //username
          Padding(
            padding: const EdgeInsets.only(right: 16.0,left: 16.0),
            child: TextField(
              onChanged: (value){
                name=value;
              },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                ),
                border: OutlineInputBorder(),
                labelText: 'Username',

              ),
            ),
          ),

          //

          SizedBox(height: 8.0,),

          //password
          Padding(
            padding: const EdgeInsets.only(right: 16.0,left: 16.0),
            child: TextField(
              style: TextStyle(color: Color(0xFFf18613)),
              onChanged: (value){
                password=value;
              },
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)
                ),
                border: OutlineInputBorder(),
                labelText: 'Password',

              ),
            ),
          ),

          //

          SizedBox(height: 10.0,),

          //forgot password?
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color:Color(0xFFf18613),
                      fontWeight:FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          //

          SizedBox(height: 50.0,),

          //sign in
          GestureDetector(
              onTap: () {
                if (name!.isNotEmpty &&

                    password!.isNotEmpty) {
                  setState(() {
                    isLoading = true;
                  });
                 logIn(name!, password!).then((
                      user) {
                    if (user != null) {
                      print("Login Sucessful");
                      setState(() {
                        isLoading = false;
                      });
                    }else{
                      print("Login Failed");
                      setState(() {
                        isLoading = false;
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                      {
                        return Homescreen();
                      }));
                    }
                  });
                } else {
                  print("please fill form correctly");
                }
              },

              child: mybutton(
                label: 'LogIn',
              )
          ),
          //

          SizedBox(height: 60,),

          //new user?
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?",
                style: TextStyle(color: Colors.white),
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context) {
                    return register();
                  }));
                },
                child: Text('Sign Up',
                  style: TextStyle(
                      color: Color(0xFFf18613),
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),

            ],)
          //


        ],

      ),


    );;
  }
}


