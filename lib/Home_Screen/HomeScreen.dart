import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:islamic_app/Home_Screen/hadeth/hadeth%20tap.dart';
import 'package:islamic_app/Home_Screen/provider/app_config_provider.dart';
import 'package:islamic_app/Home_Screen/quran/quran%20tap.dart';
import 'package:islamic_app/Home_Screen/radio/radio%20tap.dart';
import 'package:islamic_app/Home_Screen/sebha/sebhatap.dart';
import 'package:islamic_app/Home_Screen/settings/setting%20tap.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
static const String routName = "home screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedindex=0;

@override
  Widget build(BuildContext context) {
  var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.isDarkMode()?
        Image.asset('islami_app_assets/images/dark_bg.png',
        width: double.infinity,
        height: double.infinity,
          fit: BoxFit.fill,
        ):Image.asset('islami_app_assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
             centerTitle: true,
            title: Text(AppLocalizations.of(context)!.app_title,
            style: Theme.of(context).textTheme.titleLarge,
            )
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor
            ),
            child: BottomNavigationBar(
              currentIndex: selectedindex,
                onTap: (index){
                selectedindex=index;
                setState(() {

                });
                },

                items:[
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("islami_app_assets/images/icon_quran.png")),
                    label: AppLocalizations.of(context)!.quran
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("islami_app_assets/images/icon_hadeth.png")),
                    label: AppLocalizations.of(context)!.hadeth
                  ),

                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("islami_app_assets/images/icon_sebha.png")),
                    label: AppLocalizations.of(context)!.sebha
                  ), BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("islami_app_assets/images/icon_radio.png")),
                      label: AppLocalizations.of(context)!.radio
                  ),BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: AppLocalizations.of(context)!.settings
                  ),
                ]
                ),
          ),
          body: tabs[selectedindex],
        ),


      ],
    );

  }
List<Widget> tabs =[
  QuranTab(), HadethTab(), SebhaTab(), RadioTab(), SettingTab()
];


}
