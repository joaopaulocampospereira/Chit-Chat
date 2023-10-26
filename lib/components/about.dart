import 'package:contect_list/pages/login-page.dart';
import 'package:flutter/material.dart';

import '../Widgets/sidebar-widget.dart';
import '../pages/about-page.dart';
import '../pages/list-page.dart';

class AboutWidget extends StatefulWidget {
  @override
  AboutWidgetState createState() {
    return AboutWidgetState();
  }
}

class AboutWidgetState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF20244a),
      ),
      drawer: Sidebar(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: const Column(
          children: [
            Text(
                'Bem-vindo ao App de Gerenciamento de Informações de '
                'Contato, uma ferramenta inovadora desenvolvida pelo '
                'talentoso criador e idealizador, João Paulo Campos. '
                'Este aplicativo revolucionário foi projetado para '
                'simplificar e otimizar a forma como você organiza e '
                'mantém seus contatos, colocando o controle de sua lista '
                'de contatos diretamente em suas mãos. O App de Gerenciamento '
                'de Informações de contato foi criado por João Paulo Campos '
                ', cujo portfólio pode ser encontrado em https://github.com/joaopaulocampospereira.',

            ),
            SizedBox(height: 10,),
            Text(
              'Aqui estão alguns dos recursos e vantagens-chave do App de '
              'Gerenciamento de Informações de Contato:',
            ),
            SizedBox(height: 10,),
            Text(
              'Organização Eficiente: Este aplicativo permite que você crie '
              'e gerencie listas de contatos de forma intuitiva. Categorize '
              'seus contatos, adicione etiquetas e anotações personalizadas '
              'para que você possa encontrar as informações que precisa com '
              'facilidade.',
            ),
            SizedBox(height: 10,),
            Text(
              'Segurança de Dados: A segurança de suas informações pessoais '
              'é uma prioridade. O aplicativo de João Paulo Campos utiliza '
              'as mais recentes medidas de segurança para garantir que seus '
              'dados estejam protegidos.',
            ),
            SizedBox(height: 10,),
            Text(
                'Facilidade de Uso: A interface do usuário é amigável e '
                'intuitiva, tornando o processo de gerenciamento de contatos '
                'uma tarefa simples e eficaz.',
            ),
            SizedBox(height: 10,),
            Text(
              'Se você está cansado de lidar com listas de contatos desorganizadas '
              'e busca uma solução que simplifique sua vida, o App de Gerenciamento '
              'de Informações de Contato é a resposta. Sua paixão pelo desenvolvimento '
              'de software de qualidade é evidente em cada detalhe deste aplicativo.',
            ),
            SizedBox(height: 10,),
            Text(
              'Junte-se a nós e experimente a diferença que o App de Gerenciamento de '
              'Informações de Contato pode fazer em sua vida. Baixe-o agora e comece '
              'a organizar seus contatos de forma mais eficiente do que nunca!',
            ),
          ],
        ),
      ),
    );
  }
}