import 'package:flutter/material.dart';
import 'package:tela_gamer/util/cor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bg01,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _bemvindo(),
              _perfil(),
            ],
          ),
          _frase(),
        ],
      ),
    );
  }

  _perfil() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 70, top: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80), color: iconcolor),
        child: IconButton(
          padding: const EdgeInsets.all(30),
          onPressed: () {},
          icon: const Icon(
            Icons.person_2_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _bemvindo() {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 50),
      child: const Text(
        'Bem - Vindo, Melvim',
        style: TextStyle(
            color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  _frase() {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 30),
      child: const Text(
        'Qual seu Jogo Favorito?',
        style: TextStyle(
            color: Colors.black54, fontSize: 18, fontWeight: FontWeight.normal),
      ),
    );
  }
}
