import 'package:contect_list/Widgets/sidebar-widget.dart';
import 'package:flutter/material.dart';
import 'package:masked_text/masked_text.dart';

import '../Models/contact-item.dart';

class AddContactWidget extends StatefulWidget {

  const AddContactWidget({super.key});

  @override
  State<AddContactWidget> createState() => _AddContactWidgetState();
}

class _AddContactWidgetState extends State<AddContactWidget> {
  // final contactList = Contact.contacList();
  // final id = Contact.contacList().length+1;

  final contactList = 1;
  final id = 1;

  final _nameController = TextEditingController();
  final _birthdayController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  String name = '';
  String birthday = '';
  String email = '';
  String tell = '';

  // void _createContactItem(int id, String name, String birthday, String email, String tell) {
  //   setState(() {
  //     contactList.add(
  //         Contact(
  //             id: id,
  //             name: name,
  //             birthday: birthday,
  //             email: email,
  //             tell: tell
  //         )
  //     );
  //   });
  //   _nameController.clear();
  //   _birthdayController.clear();
  //   _emailController.clear();
  //   _phoneController.clear();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF20244a),
      ),
      drawer: const Sidebar(),
      body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 50),
              width: double.infinity,
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: const Text(
                'Adicionar Contato',
                  style: TextStyle(
                    color: Color(0xFF06080F),
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                  ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              width: double.infinity,
              alignment: Alignment.center,
              child: const CircleAvatar(
                backgroundColor: Color(0xFF00008b),
                minRadius: 50,
                maxRadius: 75,
                child: Icon(
                  Icons.person,
                  size: 100,
                  color: Color(0xFFf5f5ff),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                controller: _nameController,
                keyboardType: TextInputType.name,
                onChanged: (text) {name = text;},
                style: const TextStyle(color: Color(0xFF06080F)),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.person
                  ),
                  prefixIconColor: const Color(0xFF00008b),
                  hintText: 'Nome do Contato',
                  hintStyle: const TextStyle(
                    color: Color(0xFF36368a),
                  ),
                  labelText: 'Nome',
                  labelStyle: const TextStyle(
                    color: Color(0xFF00008b),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFf5f5ff),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:  const BorderSide(color: Color(0xFF7F8C99) ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:  const BorderSide(color: Color(0xFF00008b)),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: MaskedTextField(
                controller: _birthdayController,
                mask: '##/##',
                maxLength: 5,
                keyboardType: TextInputType.datetime,
                onChanged: (text) {birthday = text;},
                style: const TextStyle(color: Color(0xFF06080F)),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                      Icons.calendar_month,
                  ),
                  prefixIconColor: const Color(0xFF00008b),
                  counterStyle: const TextStyle(height: double.minPositive,),
                  counterText: "",
                  hintText: 'DD/MM',
                  hintStyle: const TextStyle(
                    color: Color(0xFF36368a),
                  ),
                  labelText: 'Aniversário',
                  labelStyle: const TextStyle(
                    color: Color(0xFF00008b),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFf5f5ff),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:  const BorderSide(color: Color(0xFF7F8C99) ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:  const BorderSide(color: Color(0xFF00008b)),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                onChanged: (text) {email = text;},
                style: const TextStyle(color: Color(0xFF06080F)),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                      Icons.mail
                  ),
                  prefixIconColor: const Color(0xFF00008b),
                  hintText: 'exemplo@exemplo.com',
                  hintStyle: const TextStyle(
                    color: Color(0xFF36368a),
                  ),
                  labelText: 'Email',
                  labelStyle: const TextStyle(
                    color: Color(0xFF00008b),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFf5f5ff),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:  const BorderSide(color: Color(0xFF7F8C99) ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:  const BorderSide(color: Color(0xFF00008b)),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: MaskedTextField(
                controller: _phoneController,
                mask: '(##) #####-####',
                maxLength: 15,
                keyboardType: TextInputType.phone,
                onChanged: (text) {tell = text;},
                style: const TextStyle(color: Color(0xFF06080F)),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                      Icons.phone
                  ),
                  prefixIconColor: const Color(0xFF00008b),
                  counterStyle: const TextStyle(height: double.minPositive,),
                  counterText: "",
                  hintText: '(99) 99999-9999',
                  hintStyle: const TextStyle(
                    color: Color(0xFF36368a),
                  ),
                  labelText: 'Telefone',
                  labelStyle: const TextStyle(
                    color: Color(0xFF00008b),
                  ),
                  filled: true,
                  fillColor: const Color(0xFFf5f5ff),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:  const BorderSide(color: Color(0xFF7F8C99) ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide:  const BorderSide(color: Color(0xFF00008b)),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    gradient: const LinearGradient(
                        colors: [
                          Color(0xFF00008b),
                          Color(0xFF5AA9FC)
                        ]
                    )
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 115),
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    onPressed: () {
                      // _createContactItem(id, _nameController.text, _birthdayController.text, _emailController.text, _phoneController.text);
                    },
                    child: const Text('CRIAR CONTATO')),
              ),
            )
        ],
      ),
    );
  }
}

