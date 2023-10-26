import 'package:flutter/material.dart';
import '../components/about.dart';


class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'About',
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Color(0xFF3E4050)
        ),
        home: AboutWidget()
    );

  }
}