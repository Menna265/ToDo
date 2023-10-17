import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/screen/setting/setting_tab.dart';
import 'package:to_do/screen/tasks/task_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../screen/tasks/bottom_sheet.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName='home';


  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index=0;
  List<Widget> tabs=[TaskTab(),SettingTab()];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.to_do),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: FloatingActionButton(onPressed: (){
        showBottom();
      },child:Icon(Icons.add),shape:CircleBorder(side: BorderSide(width: 2,color: Colors.white))),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

         onTap: (value){
           index=value;
           setState(() {

           });

         },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list_sharp,size: 30,),label:'list' ),
            BottomNavigationBarItem(icon: Icon(Icons.settings,size: 30,),label: 'setting')
          ],
        ),
      ),
      body: tabs[index],
    );
  }
  void showBottom(){
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context)=>Padding(
      padding:  EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom
      ),
      child: Bottom(),
    ));
  }
}


