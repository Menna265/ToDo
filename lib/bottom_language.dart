import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:to_do/shared/providers/app_config_provider.dart';

class BottomLanguage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  provider.changeLanguage('en');
                  Navigator.pop(context);
                },
                  child: Text(AppLocalizations.of(context)!.english,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
              Icon(Icons.check),
            ],
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              provider.changeLanguage('ar');
              Navigator.pop(context);
            },
              child: Text(AppLocalizations.of(context)!.arabic,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
        ],

      ),
    );
  }
}
