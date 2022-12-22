import 'package:flutter/material.dart';
import 'my_button.dart';
import 'mytextfield.dart';
import 'check_box.dart';
import 'login_page.dart';
import 'methods.dart';

class register extends StatefulWidget {



  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {

  String? name;
  String? lastname;
  String? email;
  String? password;
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF1752a4),
        body: isLoading?
            Center(
              child: CircularProgressIndicator(),

            ):
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('Sign up with your Email',
             style:TextStyle(
                 fontSize: 30,
                 color: Colors.white
             ) , ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('Already have an account?',
                 style: TextStyle(color: Colors.white),
               ),
               SizedBox(width: 5,),

               TextButton(onPressed:(){
                 Navigator.push(context,MaterialPageRoute(builder:(context) {
                   return login();
                 }));
               },
                 child: Text('Sign in',
                   style: TextStyle(color: Color(0xFFf18613)),
                 ),)

             ],
           ),
           SizedBox(height: 20,),

           //firstname
           Padding(
             padding: const EdgeInsets.only(right: 32.0,left: 32.0),
             child: TextField(
               onChanged: (value) {
                 name=value;
               },
               decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.black87)
                 ),
                 border: OutlineInputBorder(),
                 labelText: "Firstname",

               ),
             ),
           ),

           //
           SizedBox(height: 7,),

           //lastname

           Padding(
             padding: const EdgeInsets.only(right: 32.0,left: 32.0),
             child: TextField(
               onChanged: (value) {
                 lastname=value;
               },
               decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.black87)
                 ),
                 border: OutlineInputBorder(),
                 labelText: 'Lastname',

               ),
             ),
           ),

           //
           SizedBox(height: 7,),
           //Email
           Padding(
             padding: const EdgeInsets.only(right: 32.0,left: 32.0),
             child: TextField(
               onChanged: (value) {
                 email=value;
               },
               decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.black87)
                 ),
                 border: OutlineInputBorder(),
                 labelText: "Email",

               ),
             ),
           ),

           //

           SizedBox(height: 7,),

           //password
           Padding(
             padding: const EdgeInsets.only(right:32.0,left: 32.0),
             child: TextField(
               onChanged: (value) {
                 password=value;
               },
               obscureText: true,
               decoration: InputDecoration(
                 enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.black87)
                 ),
                 border: OutlineInputBorder(),
                 labelText: 'Password',

               ),
             ),
           ),

           //

           //TERMS ND COND
           Row(

             children: [
               MyStatefulWidget(),
               Text('I Agree to the Terms & Conditions',
                 style: TextStyle(color: Colors.white),
               ),
             ],
           ),

           //
           SizedBox(height:25,),

           //CREATE BUTTON

           GestureDetector
             (
               onTap: () {
                 if (name!.isNotEmpty &&
                     lastname!.isNotEmpty &&
                     email!.isNotEmpty &&
                     password!.isNotEmpty) {
                   setState(() {
                     isLoading = true;
                   });
                   createAccount(name!, lastname!, email!, password!).then((
                       user) {
                     if (user != null) {
                       setState(() {
                         isLoading = false;
                       });
                       print("Login Successful");
                     }else{
                       print("Login Failed");
                     }
                   });
                 } else {
                   print("please enter fields");
                 }
               },
               child:
               mybutton(
                 label: 'Create Account',
               )
           ),

           //


         ],
       )


    );
  }
}





