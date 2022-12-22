import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/login_page.dart';

Future<User?> createAccount(String Name,String lastname,String email,String password) async{

  FirebaseAuth _auth= FirebaseAuth.instance;
  try {
    User? user =(await _auth.createUserWithEmailAndPassword(email: email, password: password))
        .user;
    if(user!=null) {
      print("Account created");
      return user;
    }
    else{
      print("Account created failed");
      return user;
    }
  }catch(e) {
    print(e);
    return null;
  }
}
Future<User?> logIn(String email,String password) async{
  FirebaseAuth _auth= FirebaseAuth.instance;
  try {
    User? user =(await _auth.signInWithEmailAndPassword(email: email, password: password))
        .user;
    if(user!=null) {
      print("Login Successful");
      return user;
    }
    else{
      print("Login unsucessful");
      return user;
    }
  }catch(e){
    print(e);
    return null;
  }

}
Future<User?> logOut(BuildContext context) async {
  FirebaseAuth _auth= FirebaseAuth.instance;

  try{
    await _auth.signOut().then((value) {
     Navigator.push(context, MaterialPageRoute(builder: (context){
       return login();
     }));
    });
  }catch(e) {
    print("error");
  }
}
