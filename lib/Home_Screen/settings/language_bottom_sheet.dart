import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../provider/app_config_provider.dart';

class LanguageBottomSheet extends StatefulWidget {

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InkWell(
          onTap: () {
            provider.ChangeLanguage("en");

          },
          child: provider.AppLanguage=="en"?
          getSelectedItemWiedget(AppLocalizations.of(context)!.english):
          getUnSelectedItemWiedget(AppLocalizations.of(context)!.english),
        ),
        InkWell(
          onTap: () {
          provider.ChangeLanguage("ar");
          },
          child: provider.AppLanguage=="ar"?
          getSelectedItemWiedget(AppLocalizations.of(context)!.arbic):
          getUnSelectedItemWiedget(AppLocalizations.of(context)!.arbic)
          ,
        ),
      ]
    );
  }

  Widget getSelectedItemWiedget(String text){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Theme.of(context).primaryColor
            ),
          ),
          Icon(Icons.check,color: Theme.of(context).primaryColor)
        ],
      ),

    );
  }
  Widget getUnSelectedItemWiedget(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text,
          style: Theme.of(context).textTheme.titleMedium),
    );
  }
}
