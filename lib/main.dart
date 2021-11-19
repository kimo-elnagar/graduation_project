import 'package:flutter/material.dart';
import 'package:login_ui/Screens/home/home.dart';
import 'package:login_ui/Screens/login/login.dart';
import 'package:login_ui/Screens/scratch%20screen/scratch%20screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF2661FA),
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:FutureBuilder(
          future: Future.delayed(Duration(seconds: 3)),
          builder: (ctx,sh) {
            if(sh.connectionState == ConnectionState.waiting)return ScratchScreen();
            else return Home();}
      ),
      routes: {    "Login" : (context) => LoginScreen ()
      /*  "Dashboard" : (context) => Dashboard()*/},
      )
    ;
  }
}
