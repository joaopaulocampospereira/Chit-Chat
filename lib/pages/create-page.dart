import 'package:contect_list/components/add-contact.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create',
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Color(0xFF3E4050)
      ),
      home: AddContactWidget(),
  );
  }
}
