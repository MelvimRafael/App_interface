import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tela_gamer/pages/home/header.dart';
import 'package:tela_gamer/util/cor.dart';

import '../menus/card01.dart';
import '../menus/card02.dart';
import '../menus/menucircle.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: textoColor,
          child: const Column(
            children: [
              Header(),
              MenuItens(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Text(
                    'Categoria',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              CardGrande(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Text(
                    'Todos Jogos',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                  //SizedBox(height: 20),
                ],
              ),
              CardItens(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        preferredSize: const Size.fromHeight(0));
  }
}
