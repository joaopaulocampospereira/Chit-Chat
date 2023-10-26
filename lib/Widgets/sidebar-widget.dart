
import 'package:contect_list/pages/create-page.dart';
import 'package:flutter/material.dart';

import '../Models/contact-item.dart';
import '../pages/about-page.dart';
import '../pages/list-page.dart';
import '../pages/login-page.dart';

class Sidebar extends StatelessWidget {

  const Sidebar({super.key, });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFf0f8ff),
      child: Column(
        children: [
          Container(
            width: 500,
            height: 290,
            padding: const EdgeInsets.all(10.0),
            color: const Color(0xFF20244a),
            child: DrawerHeader(
              child: Column(
                children: [
                  const Text(
                    'Bem vindo Usuário',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color.fromRGBO(164, 195, 208, 0.05))
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 120,
                      color: Color(0xFF333443),
                    ),
                  ),
                ],
              ),

            ),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => ListPage()),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onSurface: Colors.transparent,
                shadowColor: Colors.transparent,
                padding: const EdgeInsets.only(top: 5, bottom: 5,)
            ),
            child: const ListTile(
              leading: Icon(Icons.list),
              title: Text('Lista de Contatos'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => CreatePage()),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onSurface: Colors.transparent,
                shadowColor: Colors.transparent,
                padding: const EdgeInsets.only(top: 5, bottom: 5,)
            ),
            child: const ListTile(
              leading: Icon(Icons.add_reaction_outlined),
              title: Text('Adicionar Contato'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onSurface: Colors.transparent,
                shadowColor: Colors.transparent,
                padding: const EdgeInsets.only(top: 5, bottom: 5,)
            ),
            child: const ListTile(
              leading: Icon(Icons.help_outline_rounded),
              title: Text('Sobre'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onSurface: Colors.transparent,
                shadowColor: Colors.transparent,
                padding: const EdgeInsets.only(top: 5, bottom: 5,)
            ),
            child: const ListTile(
              leading: Icon(Icons.logout_rounded),
              title: Text('Sair'),
            ),
          ),
        ],
      ),
    );
  }
}
