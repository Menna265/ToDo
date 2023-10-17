import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/shared/providers/app_config_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomTheme extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: (){
                provider.changeTheme(ThemeMode.light);
                Navigator.pop(context);
                },
                child: Text( AppLocalizations.of(context)!.light,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
            Icon(Icons.check),
          ],
        ),
        SizedBox(height: 20,),
        InkWell(
            onTap: (){
            provider.changeTheme(ThemeMode.dark);
            Navigator.pop(context);
            },
            child: Text(AppLocalizations.of(context)!.dark,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
      ],


    );
  }
}
