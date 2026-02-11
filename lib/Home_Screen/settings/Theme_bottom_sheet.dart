import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../my_theme.dart';


import '../provider/app_config_provider.dart';

class ThemeBottomSheet extends StatefulWidget {

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        /// Dark mode
        InkWell(
          onTap: () {
            provider.ChangeTheme(ThemeMode.dark);

          },
          child: provider.isDarkMode()?
          getSelectedItemWiedget(AppLocalizations.of(context)!.dark):
          getUnSelectedItemWiedget(AppLocalizations.of(context)!.dark),
        ),
        InkWell(
          onTap: () {
          provider.ChangeTheme(ThemeMode.light);
          },
          child: provider.isDarkMode() ?
          getUnSelectedItemWiedget(AppLocalizations.of(context)!.light):
          getSelectedItemWiedget(AppLocalizations.of(context)!.light)
          ,
        ),
      ]
    );
  }

  Widget getSelectedItemWiedget(String text){
    var provider = Provider.of<AppConfigProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color:  provider.isDarkMode()?
            Theme.of(context).primaryColor
                :
            MyTheme.primarylight
      ),
          ),
          Icon(Icons.check,color: Theme.of(context).primaryColor)
        ],
      ),

    );
  }
  Widget getUnSelectedItemWiedget(String text) {
    var provider = Provider.of<AppConfigProvider>(context);


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(text,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: provider.isDarkMode()?
            Theme.of(context).primaryColor
                :
            MyTheme.primarylight
          )
          ),
    );
  }
}
