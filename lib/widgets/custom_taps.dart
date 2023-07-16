import 'package:flutter/material.dart';
import 'one_dice_tap.dart';
import 'tow_dice_tap.dart';
class CustomTaps extends StatelessWidget {
  const CustomTaps({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: [
      OneDiceTap(),
      TowDiceTap(),
    ]);
  }
}
