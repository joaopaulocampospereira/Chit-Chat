import 'package:flutter/material.dart';
import '../components/login.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Color(0xFF3E4050)
        ),
        home: LoginWidget()
    );

  }
}