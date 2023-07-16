import 'package:flutter/material.dart';
import 'custom_taps.dart';
class CustomAppBar extends StatelessWidget {
  final int length;
  final String text;
  final List<String> title = <String> ['One Dice' , 'Tow Dice'];
  CustomAppBar({super.key ,
    this.length = 2 ,
    this.text = 'Roll Dice'
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: length,
        child: Scaffold(
         appBar: AppBar(
           flexibleSpace: Container(
             decoration: const BoxDecoration(
               gradient: LinearGradient(
                 begin: Alignment.topLeft,
                 end: Alignment.bottomRight,
                 colors: [
                    Color(0XFF673AB7) ,
                   Color(0XFF311B92)
                 ]
               )
             ),
           ),
           title: Text(text),
           bottom: TabBar(
             tabs: [
               Tab(text: title[0],),
               Tab(text: title[1],),
             ],
           ),
         ),
          body: const CustomTaps(),
        )
    );
  }
}
