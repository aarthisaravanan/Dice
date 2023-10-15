import 'package:flutter/material.dart';
import 'dart:math';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activedice = 'assets/images/inverted-dice-1.png';
  void rolldice() {
    setState(() {
      var diceroll = randomize.nextInt(6) + 1;
      activedice = 'assets/images/inverted-dice-$diceroll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activedice, width: 200),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
                padding: const EdgeInsets.only(top: 20)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
