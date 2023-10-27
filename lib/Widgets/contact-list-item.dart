import 'package:flutter/material.dart';

import '../Models/contact-item.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;

  const ContactItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ]
      ),
        child: ListTile(
          onTap: () {},
          contentPadding: EdgeInsets.all(10),
          leading: CircleAvatar(
              child: Icon(Icons.person)
          ),
          title: Text(
            '${contact.name}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
    );
  }
}
