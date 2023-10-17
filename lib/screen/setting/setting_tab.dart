import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:to_do/bottom_language.dart';
import 'package:to_do/bottom_theme.dart';
import 'package:to_do/shared/providers/app_config_provider.dart';
import 'package:to_do/shared/styles/colors.dart';

class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: TextStyle(fontSize: 20,color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                showLanguage();

              },
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: primaryColor,
                      ),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          provider.appLanguage == 'en'
                              ? AppLocalizations.of(context)!.english
                              : AppLocalizations.of(context)!.arabic,
                          style: TextStyle(fontSize: 15, color: primaryColor),
                        ),
                        Icon(
                          Icons.arrow_drop_down_outlined,
                          color: primaryColor,
                        ),
                      ],
                    ),
                  ))),

          SizedBox(
            height: 15,
          ),
          Text(
            AppLocalizations.of(context)!.mode,
            style: TextStyle(fontSize: 20,color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
            showTheme();
            },
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: primaryColor,
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                      provider.appTheme==ThemeMode.light?AppLocalizations.of(context)!.light:AppLocalizations.of(context)!.dark,
                        style: TextStyle(fontSize: 15, color: primaryColor),
                      ),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        color: primaryColor,
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }

  void showLanguage() {
    showModalBottomSheet(
        context: context, builder: (context) => BottomLanguage());
  }
  void showTheme(){
    showModalBottomSheet(context: context,

        builder: (context)=> BottomTheme());
  }
}
