import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/layout/home_layout.dart';

void main (){
  runApp(MyApp());
}
class  MyApp  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute:HomeLayout.routeName ,
      routes: {
        HomeLayout.routeName:(context)=>HomeLayout(),

      },
    );
  }
}
