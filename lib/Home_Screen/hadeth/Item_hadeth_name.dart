import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/Home_Screen/hadeth/hadeth%20tap.dart';
import 'package:islamic_app/Home_Screen/quran/sura_details_screen.dart';

import 'hadeth_details_screen.dart';

class ItemHadethName extends StatelessWidget {
Hadeth hadeth;
  ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
          Navigator.of(context).pushNamed(HadethDetailsScreen.routName,
          arguments:hadeth

          );
      },
      child: Text( hadeth.title ,
      style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
class hadethDetailsArgs{
  String name ;
  int index ;
  hadethDetailsArgs({required this.name,required this.index});
}
