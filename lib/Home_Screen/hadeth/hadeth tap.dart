import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/Home_Screen/hadeth/Item_hadeth_name.dart';
import 'package:islamic_app/l10n/app_localizations.dart';

class HadethTab extends StatefulWidget {

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadethList=[];

  @override
  Widget build(BuildContext context) {
if(ahadethList.isEmpty){
  LoadHadethFile();
}
    return Center(
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child:
              Center(child: Image.asset("islami_app_assets/images/hadeth_logo.png"))
          ),
          Divider(color: Theme.of(context).primaryColor, thickness: 3),
          Text( AppLocalizations.of(context)!.hadeth_name,
              style: Theme.of(context).textTheme.titleMedium),
          Divider(color: Theme.of(context).primaryColor, thickness: 3),
          Expanded(
            flex: 3,
            child: ListView.separated(
              separatorBuilder:(context, index) {
                return Divider(
                    color: Theme.of(context).primaryColor,
                    thickness: 1
                );

              },
              itemBuilder: (context,index){
                return ItemHadethName(hadeth: ahadethList[index],);
              },
              itemCount: ahadethList.length,
            ),
          )
        ],
      ),
    );
  }

  void LoadHadethFile ()async {
    String ahadethcontent = await rootBundle.loadString(
        "islami_app_assets/assets/files/hadeth.txt");
    List<String> hadethlist = ahadethcontent.split("#\r\n");
    for (int i = 0; i < hadethlist.length ; i++) {
      List<String> hadethLines = hadethlist[i].split("\n");
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: hadethLines);
      ahadethList.add(hadeth);
    setState(() {

    });
    }
  }
}
class Hadeth{
  String title;
  List<String> content;
  Hadeth({required this.title, required this.content});
}
