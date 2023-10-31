import 'package:contect_list/pages/create-page.dart';
import 'package:contect_list/pages/forgot-page.dart';
import 'package:contect_list/pages/login-page.dart';
import 'package:contect_list/pages/register-page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'about-page.dart';
import 'list-page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Home',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color(0xFF3E4050)
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => ListPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/forgot': (context) => ForgotPage(),
        '/about': (context) => AboutPage(),
        '/create': (context) => CreatePage(),
      },
    );

  }
}
