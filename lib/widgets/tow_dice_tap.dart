import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'gradient_container.dart';
import 'dice_widget.dart';
import 'roll_dice_button.dart';
class TowDiceTap extends StatefulWidget {
  const TowDiceTap({super.key});

  @override
  State<TowDiceTap> createState() => _TowDiceTapState();
}

class _TowDiceTapState extends State<TowDiceTap> {
  var _index_1 = 1;
  var _index_2 = 2;
  bool flag = true;
  rollDice() {
    setState(() {
      flag = false;
      _index_1 = Random().nextInt(6) + 1;
      _index_2 = Random().nextInt(6) + 1;
    });
    Timer(const Duration(seconds: 4), () {
      setState(() {
        flag = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GradientContainer(child: Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: flag,
            child: DiceWidget(index: _index_1 , width: 180,),
          ),
          Visibility(
            visible: flag,
            child: DiceWidget(index: _index_2 , width: 180,),
          ),
      ],),
      Visibility(
        visible: flag,
        child: RollDiceButton(function: rollDice),
      ),
      Visibility(
        visible: !flag,
        child: Lottie.asset('assets/lottie/roll_dice.json'),
      ),
    ],));
  }
}
