import 'package:flutter/material.dart';
import 'package:minecraft_status_server/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {'home': (context) =>  Home()}

    );
  
  }
}