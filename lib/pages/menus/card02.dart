import 'package:flutter/material.dart';

import '../../util/cor.dart';

class CardItens extends StatelessWidget {
  const CardItens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(
          direction: Axis.vertical,
          children: [
            _menuItens(Icons.account_box, 'Ação'),
            _menuItens(Icons.abc, '02'),
            _menuItens(Icons.abc, '03'),
            _menuItens(Icons.abc, '04'),
            _menuItens(Icons.abc, '05'),
            _menuItens(Icons.abc, '06'),
            _menuItens(Icons.abc, '07'),
            _menuItens(Icons.abc, '08'),
            _menuItens(Icons.abc, '10'),
          ],
        ),
      ),
    );
  }

  _menuItens(
    IconData icon,
    String name,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [