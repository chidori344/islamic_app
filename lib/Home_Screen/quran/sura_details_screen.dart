import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/Home_Screen/quran/Item_sura_details.dart';
import 'package:islamic_app/Home_Screen/quran/Item_sura_name.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routName = "sura Details Screen";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suraDetailsArgs;
if (verses.isEmpty){
  LoadFiles(args.index);
}

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
    title: Text('${args.name}',
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
        return ItemSuraDetails(content: verses[index],index: index);
            }),
          itemCount: verses.length ,

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
