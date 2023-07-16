import 'package:flutter/material.dart';

class RollDiceButton extends StatelessWidget {
  final String text;
  final Function() function;
  const RollDiceButton({super.key,  this.text = 'ROLL DICE' , required this.function});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: const EdgeInsets.only(top: 20)),
      onPressed: function,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
