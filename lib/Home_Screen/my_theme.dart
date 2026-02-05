import 'package:flutter/material.dart';

class MyTheme{
  ///class , color , light theme , dark
static Color blackColor = Color(0xff242424);
static Color primarylight = Color(0xffB7935F);
static Color whiteColor = Colors.white;

 static ThemeData LightTheme = ThemeData(
scaffoldBackgroundColor: Colors.transparent,
primaryColor: primarylight,
   appBarTheme: AppBarTheme(
     backgroundColor: Colors.transparent,
     centerTitle: true,
   ),
   textTheme:TextTheme(
     titleLarge: TextStyle(
       fontSize: 30,
       fontWeight: FontWeight.w700,
       color: blackColor

     )
   ),
   bottomNavigationBarTheme: BottomNavigationBarThemeData(
     selectedItemColor: blackColor,
     unselectedItemColor:whiteColor,
     showUnselectedLabels: true,
   )

 );
}