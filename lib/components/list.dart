import 'package:contect_list/Widgets/sidebar-widget.dart';
import 'package:flutter/material.dart';

import '../Models/contact-item.dart';
import '../Widgets/contact-list-item.dart';

import '../controller/task_controller.dart';

class ListWidget extends StatefulWidget {
  @override
  ListWidgetState createState() {
    return ListWidgetState();
  }
}

class ListWidgetState extends State {
  final contactList = ContactController().list();
  final _searchController = TextEditingController();
  List<Contact> _foundContact = [];

  @override
  void initState() {
    _foundContact = contactList;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF20244a),
        title: Row(
          children: [
            Container(
              width: 300,
              height: 60,
              child: SearchBox(),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFf0f8ff),
      drawer: Sidebar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Column(
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 20, left: 0, right: 0),
                    child: Text(
                      'Contatos',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  for (Contact contact in _foundContact)
                    ContactItem(contact: contact,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  void  _runFilter(String enteredKeyword) {
    List<Contact>? results = [];
    if(enteredKeyword.isEmpty) {
      results = contactList;
    } else {
      results = contactList.where(
        (item) => item.name!
            .toLowerCase()
            .contains(
              enteredKeyword
                  .toLowerCase()
        )
      ).toList();
    }

    setState(() {
      _foundContact = results!;
    });
  }

  Widget SearchBox() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: TextField(
          controller: _searchController,
          onChanged: (text) {
            _runFilter(text);
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: 20,
              minWidth: 25,
            ),
            border: InputBorder.none,
            hintText: 'Procurar',
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
