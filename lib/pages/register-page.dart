import 'package:flutter/material.dart';

import '../components/register.dart';


class RegisterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Register',
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Color(0xFF3E4050)
        ),
        home: RegisterWidget()
    );

  }
}