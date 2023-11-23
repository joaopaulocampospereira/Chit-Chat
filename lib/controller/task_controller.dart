import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Models/contact-item.dart';
import '../view/util.dart';
import 'login_controller.dart';

class ContactController {
  //
  // ADICIONAR uma nova Tarefa
  //
  void add(context, Contact c) {
    FirebaseFirestore.instance
        .collection('contact')
        .add(c.toJson())
        .then((value) => sucesso(context, 'Contato adicionado com sucesso'))
        .catchError(
            (e) => erro(context, 'Não foi possível adicionar o contato.'))
        .whenComplete(() => Navigator.pop(context));
  }

  //
  // ATUALIZAR
  //
  void update(context, id, Contact c) {
    FirebaseFirestore.instance
        .collection('contact')
        .doc(id)
        .update(c.toJson())
        .then((value) => sucesso(context, 'Contato atualizado com sucesso'))
        .catchError(
            (e) => erro(context, 'Não foi possível atualizar o contato.'))
        .whenComplete(() => Navigator.pop(context));
  }

  //
  // EXCLUIR
  //
  void exclude(context, id) {
    FirebaseFirestore.instance
        .collection('contact')
        .doc(id)
        .delete()
        .then((value) => sucesso(context, 'Contato excluído com sucesso'))
        .catchError((e) => erro(context, 'Não foi possível excluir o contato.'));
  }

  //
  // LISTAR todas as Tarefas da coleção
  //
  list() {
    return FirebaseFirestore.instance
        .collection('contact')
        .where('uid', isEqualTo: LoginController().idUsuario());
  }
}
