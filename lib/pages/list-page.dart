import 'package:flutter/material.dart';
import '../components/list.dart';


class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'List',
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Color(0xFF3E4050)
        ),
        home: ListWidget()
    );

  }
}