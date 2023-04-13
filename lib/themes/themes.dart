import 'package:flutter/material.dart';

class Themes{
  static final themes = ThemeData.light().copyWith(
    inputDecorationTheme: const InputDecorationTheme(

      fillColor: Color.fromARGB(255, 97, 90, 68),
      filled: true
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromRGBO(74, 0, 112, 1)
    )),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromRGBO(51, 51, 51, 51)    )
  
  
  );


// Gris oscuro: RGBA(51, 51, 51, 1)
// Morado oscuro: RGBA(74, 0, 112, 1)
// Verde oscuro: RGBA(0, 82, 33, 1)
// Azul oscuro: RGBA(0, 31, 63, 1)
// Marrón oscuro: RGBA(51, 25, 0, 1)
    

   


}