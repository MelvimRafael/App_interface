import 'package:flutter/material.dart';
import '../../util/cor.dart';

class MenuItens extends StatelessWidget {
  const MenuItens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
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
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: secundaryColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(icon),
          ),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
