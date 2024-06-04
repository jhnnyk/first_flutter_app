import 'dart:math';
import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll1 = 1;
  var currentDiceRoll2 = 2;

  void rollDice() {
    setState(() {
      // currentDiceRoll1 = Random().nextInt(6) + 1;
      // currentDiceRoll2 = Random().nextInt(6) + 1;
      // we can instead use the 'randomizer' variable to save memory
      currentDiceRoll1 = randomizer.nextInt(6) + 1;
      currentDiceRoll2 = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText('Sup homie?'),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceRoll1.png',
              width: 150,
            ),
            Image.asset(
              'assets/images/dice-$currentDiceRoll2.png',
              width: 150,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 58, 72, 221),
          ),
          child: const Text('Roll the Dice'),
        )
      ],
    );
  }
}
