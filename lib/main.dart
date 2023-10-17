import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/layout/home_layout.dart';
import 'package:to_do/shared/providers/app_config_provider.dart';
import 'package:to_do/shared/styles/my_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';




void main ()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(create: (context) =>AppConfigProvider(),
  child: MyApp()));
}
class  MyApp  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute:HomeLayout.routeName ,
      routes: {
        HomeLayout.routeName:(context)=>HomeLayout(),

      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
      themeMode:provider.appTheme ,
    );
  }

}
