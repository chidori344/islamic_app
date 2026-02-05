import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:islamic_app/Home_Screen/quran/hadeth%20tap.dart';
import 'package:islamic_app/Home_Screen/quran/quran%20tap.dart';
import 'package:islamic_app/Home_Screen/quran/radio%20tap.dart';
import 'package:islamic_app/Home_Screen/quran/sebhatap.dart';

class HomeScreen extends StatefulWidget {
static const String routName = "home screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedindex=0;

@override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('islami_app_assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
             centerTitle: true,
            title: Text('Islami',
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
                    label: "Quran"
                  ),
                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("islami_app_assets/images/icon_hadeth.png")),
                    label: "Hadeth"
                  ),

                  BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("islami_app_assets/images/icon_sebha.png")),
                    label: "sebha"
                  ), BottomNavigationBarItem(
                      icon: ImageIcon(AssetImage("islami_app_assets/images/icon_radio.png")),
                      label: "Radio"
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
  QuranTab(), HadethTab(), SebhaTab(), RadioTab()
];
}
