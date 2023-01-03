import 'package:flutter/material.dart';
import 'gridview_card_page.dart';
import 'gridview_page.dart';
import 'home.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),.
      initialRoute: '/',
      routes: {
        '/':(context) => HomePage()
      },
    );
  }
}