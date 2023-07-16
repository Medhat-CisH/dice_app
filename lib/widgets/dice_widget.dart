import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  final int index;
  final double width;
  const DiceWidget({super.key , required this.index , this.width = 200});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/dice-$index.png' , width: width,);
  }
}
