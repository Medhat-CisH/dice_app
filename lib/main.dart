import 'package:flutter/material.dart';
import 'widgets/custom_app_bar.dart';


main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: CustomAppBar());
  }
}
