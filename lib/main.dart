import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/login_page.dart';
import 'package:untitled1/register_page.dart' ;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(myapp());
}



class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login' : (context) => login(),
        'register' : (context) => register()


      },
    );
  }
}






