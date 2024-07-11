import 'package:flutter/material.dart';

class CoffeePref extends StatefulWidget {
  const CoffeePref({super.key});

  @override
  State<CoffeePref> createState() => _CoffeePrefState();
}

class _CoffeePrefState extends State<CoffeePref> {
  int strength = 1;
  int sugar = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            for (int i = 0; i < strength; i++)
              Image.asset('assets/img/coffee_bean.png',
                  width: 30,
                  color: Colors.brown[50],
                  colorBlendMode: BlendMode.multiply),
            const Expanded(child: SizedBox()),
            TextButton(
              onPressed: increaseStrength,
              style: TextButton.styleFrom(
                foregroundColor: Colors.brown,
              ),
              child: const Text('+'),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Sugar: '),
            if (sugar == 0) const Text('No Sugar...'),
            for (int i = 0; i < sugar; i++)
              Image.asset('assets/img/sugar_cube.png',
                  width: 30,
                  color: Colors.brown[50],
                  colorBlendMode: BlendMode.multiply),
            const Expanded(child: SizedBox()),
            TextButton(
              onPressed: increaseSugar,
              style: TextButton.styleFrom(
                foregroundColor: Colors.brown,
              ),
              child: const Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}
