import 'package:flutter/material.dart';
import '../components/forgot.dart';


class ForgotPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Forgot',
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Color(0xFF3E4050)
        ),
        home: ForgotWidget()
    );

  }
}