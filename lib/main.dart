import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/Home_Screen/HomeScreen.dart';
import 'package:islamic_app/Home_Screen/provider/app_config_provider.dart';
import 'package:provider/provider.dart';

import 'Home_Screen/hadeth/hadeth_details_screen.dart';
import 'Home_Screen/my_theme.dart';
import 'Home_Screen/quran/sura_details_screen.dart';
import 'l10n/app_localizations.dart';
void main () {
  runApp(ChangeNotifierProvider(create: (context)=>AppConfigProvider(),
  child: Myapp()));
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(theme: MyTheme.LightTheme ,
        themeMode:provider.AppTheme,
      darkTheme: MyTheme.darkTheme,



      locale: Locale(provider.AppLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routName,
      routes: {
        HomeScreen.routName : (context)=> HomeScreen(),
        SuraDetailsScreen.routName : (context)=> SuraDetailsScreen(),
        HadethDetailsScreen.routName : (context)=> HadethDetailsScreen(),

      },
    );
  }
}