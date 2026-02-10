import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier{
   String AppLanguage = "en";
   ThemeMode AppTheme = ThemeMode.light;
   void ChangeLanguage(String lang){
     if(AppLanguage== lang){
       return;
     }
     AppLanguage = lang;
     notifyListeners();
     }
     void ChangeTheme(ThemeMode newMode){
     if (AppTheme==newMode){
       return ;
     }
     AppTheme = newMode;
     notifyListeners();
     }
   }


