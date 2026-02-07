import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/Home_Screen/quran/sura_details_screen.dart';

class ItemSuraName extends StatelessWidget {

  String name;
  int index;
  ItemSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
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
      style: Theme.of(context).textTheme.titleSmall,
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
