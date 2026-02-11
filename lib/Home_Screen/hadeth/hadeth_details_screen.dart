import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/Home_Screen/hadeth/Item_hadeth_details.dart';
import 'package:islamic_app/Home_Screen/quran/Item_sura_details.dart';
import 'package:islamic_app/Home_Screen/quran/Item_sura_name.dart';
import 'package:provider/provider.dart';

import '../provider/app_config_provider.dart';
import 'hadeth tap.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routName = "hadeth Details Screen";


  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth ;
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
    title: Text(args.title,
    style: Theme.of(context).textTheme.titleLarge,
    )
    ),
      body: Center(
        child: ListView.separated(separatorBuilder:(context, index) {
          return Divider(
              color: Theme.of(context).primaryColor,
              thickness: 1
          );

        },
            itemBuilder:( (context, index) {
        return ItemHadethDetails(content: args.content[index]);
            }),
          itemCount: args.content.length,

        ),
      ),
    )
    ]);

  }

  void LoadFiles(int index) async{
    String content = await rootBundle.loadString("islami_app_assets/assets/files/${index+1}.txt");
   List<String> Lines = content.split("\n");
   verses = Lines  ;
   setState(() {

   });
  }
}
