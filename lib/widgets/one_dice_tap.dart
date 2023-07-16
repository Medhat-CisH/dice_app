import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'gradient_container.dart';
import 'dice_widget.dart';
import 'roll_dice_button.dart';
import 'package:lottie/lottie.dart';

class OneDiceTap extends StatefulWidget {
  const OneDiceTap({super.key});

  @override
  State<OneDiceTap> createState() => _OneDiceTapState();
}

class _OneDiceTapState extends State<OneDiceTap> {
  var _index = 1;
  bool flag = true;
  rollDice() {
    setState(() {
      flag = false;
      _index = Random().nextInt(6) + 1;
    });
    Timer(const Duration(seconds: 4), () {
    setState(() {
      flag = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
          visible: flag,
          child: DiceWidget(index: _index),
        ),
        Visibility(
          visible: flag,
          child: RollDiceButton(function: rollDice),
        ),
        Visibility(
          visible: !flag,
          child: Lottie.asset('assets/lottie/roll_dice.json'),
        ),
      ],
    ));
  }
}
