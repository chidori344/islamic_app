import 'package:flutter/material.dart';

class MyTheme{
  ///class , color , light theme , dark
static Color blackColor = Color(0xff242424);
static Color primarylight = Color(0xffB7935F);
static Color primaryDark = Color(0xff141A2E);
static Color YellowColor = Color(0xffFACC1D);
static Color whiteColor = Colors.white;

 static ThemeData LightTheme = ThemeData(
scaffoldBackgroundColor: Colors.transparent,
primaryColor: primarylight,
   appBarTheme: AppBarTheme(
     backgroundColor: Colors.transparent,
     centerTitle: true,
     iconTheme: IconThemeData(
       color: blackColor
     ),
   ),
   textTheme:TextTheme(
     titleLarge: TextStyle(
       fontSize: 30,
       fontWeight: FontWeight.w700,
       color: blackColor

     ),
         titleMedium: TextStyle(
       fontSize: 25,
       fontWeight: FontWeight.w600,
       color: blackColor
   ),
     titleSmall: TextStyle(
         fontSize: 35,
         fontWeight: FontWeight.w400,
         color: blackColor
     ),
   ),
   bottomNavigationBarTheme: BottomNavigationBarThemeData(
     selectedItemColor: blackColor,
     unselectedItemColor:whiteColor,
     showUnselectedLabels: true,
   )

 );
 /////// Dark mode
 static ThemeData darkTheme = ThemeData(
scaffoldBackgroundColor: Colors.transparent,
primaryColor: primaryDark,
   appBarTheme: AppBarTheme(
     backgroundColor: Colors.transparent,
     centerTitle: true,
     iconTheme: IconThemeData(
       color: whiteColor
     ),
   ),
   textTheme:TextTheme(
     titleLarge: TextStyle(
       fontSize: 30,
       fontWeight: FontWeight.w700,
       color: whiteColor

     ),
         titleMedium: TextStyle(
       fontSize: 25,
       fontWeight: FontWeight.w600,
       color: whiteColor
   ),
     titleSmall: TextStyle(
         fontSize: 35,
         fontWeight: FontWeight.w400,
         color: YellowColor
     ),
   ),
   bottomNavigationBarTheme: BottomNavigationBarThemeData(
     selectedItemColor: YellowColor,
     unselectedItemColor:whiteColor,
     showUnselectedLabels: true,
   )

 );
}