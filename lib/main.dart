import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/Home_Screen/HomeScreen.dart';

void main () {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routName ,
      routes: {
        HomeScreen.routName : (context)=> HomeScreen(),

      },
    );
  }
}