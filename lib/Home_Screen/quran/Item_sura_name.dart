import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/Home_Screen/my_theme.dart';
import 'package:islamic_app/Home_Screen/provider/app_config_provider.dart';
import 'package:islamic_app/Home_Screen/quran/sura_details_screen.dart';
import 'package:provider/provider.dart';

class ItemSuraName extends StatelessWidget {

  String name;
  int index;
  ItemSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: (){
          Navigator.of(context).pushNamed(SuraDetailsScreen.routName,
          arguments: suraDetailsArgs(
              name: name,
              index: index)
          );
      },
      child: Text(
        name,
      style: provider.isDarkMode()?
      Theme.of(context).textTheme.titleSmall!.copyWith(
        color: MyTheme.whiteColor,
      )
          :Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
class suraDetailsArgs{
  String name ;
  int index ;
  suraDetailsArgs({required this.name,required this.index});
}
