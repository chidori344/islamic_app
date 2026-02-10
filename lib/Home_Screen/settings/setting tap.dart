import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../provider/app_config_provider.dart';
import 'language_bottom_sheet.dart';

class SettingTab extends StatefulWidget {


  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      padding: EdgeInsets.all(8),
child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Text(AppLocalizations.of(context)!.language,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
        color: Theme.of(context).primaryColor
      ),
    ),
    SizedBox(height:15),
    InkWell(
      onTap: (){
        ShowLanguageBottomSheet();

    },
      child: Container(decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).primaryColor
      ),
        child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(provider.AppLanguage=="en"?
                AppLocalizations.of(context)!.english:
                AppLocalizations.of(context)!.arbic,
                style: Theme.of(context).textTheme.titleMedium
            ),
           Icon(Icons.arrow_drop_down)
      ])
        ),
    ),

  ],
) ,

    );
  }

  void ShowLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context)=> LanguageBottomSheet()
    );

  }
}
