import 'package:contect_list/Widgets/sidebar-widget.dart';
import 'package:flutter/material.dart';

class AddContact extends StatefulWidget {
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF20244a),
      ),
      drawer: Sidebar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
