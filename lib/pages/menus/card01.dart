import 'package:flutter/material.dart';
import 'package:tela_gamer/util/cor.dart';

class CardGrande extends StatelessWidget {
  const CardGrande({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _card(Colors.black12, 'Card Legendado 1'),
            _card(Colors.black87, 'Card Legendado 2'),
            _card(Colors.amber[400]!, 'Card Legendado 3'),
            _card(Colors.amber[500]!, 'Card Legendado 4'),
            _card(Colors.amber[600]!, 'Card Legendado 5'),
          ],
        ),
      ),
    );
  }

  _card(
    Color cor,
    String name,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 60),
              child: Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            color: cor,
          ),
        ],
      ),
    );
  }
}
