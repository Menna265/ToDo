import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';


class MyThemeData {

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: mint,


      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: primaryColor,
          secondary: primaryColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: primaryColor,
          onBackground: Colors.grey,
          surface: Colors.blueGrey,
          onSurface: Colors.white),





      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: blackColor),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: primaryDark,),
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: blackColor),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: primaryColor,
        ),


      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
      ));






  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: primaryDark,



      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: Colors.white,
          secondary: primaryColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: primaryDark,
          background: primaryColor,
          onBackground: Colors.white,
          surface: primaryColor,
          onSurface: Colors.white),

      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: blackColor),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: primaryDark,),
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: blackColor),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: primaryColor,
        ),


      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryDark,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
      ));




  // static ThemeData darkTheme =ThemeData(
  //     scaffoldBackgroundColor: primaryDark,
  //     colorScheme: ColorScheme(
  //         brightness: Brightness.light,
  //         primary: primaryDark,
  //         onPrimary:Colors.white ,
  //         secondary: yellowColor,
  //         onSecondary: Colors.white,
  //         error: Colors.red,
  //         onError: Colors.white,
  //         background: yellowColor,
  //         onBackground: Colors.grey,
  //         surface: Colors.blueGrey,
  //         onSurface: Colors.white),
  //     textTheme: TextTheme(
  //       bodySmall: GoogleFonts.elMessiri(
  //           fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
  //       bodyMedium: GoogleFonts.elMessiri(
  //           fontSize: 25,
  //           fontWeight: FontWeight.w700,
  //           color: Color(0xFFFFFFFF)),
  //       bodyLarge: GoogleFonts.elMessiri(
  //           fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
  //     ),
  //     appBarTheme: AppBarTheme(
  //       iconTheme: IconThemeData(
  //         color: Colors.white,
  //       ),
  //       color: Colors.transparent,
  //       elevation: 0.0,
  //       centerTitle: true,
  //     ),
  //     bottomNavigationBarTheme: BottomNavigationBarThemeData(
  //
  //       type: BottomNavigationBarType.shifting,
  //       selectedItemColor: yellowColor,
  //       unselectedItemColor: Colors.white,
  //     ));
}
