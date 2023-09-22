import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  //final List<Color> gradientColors;
  //final Alignment beginAlignment;
  //final Alignment endAlignment;

  HeaderAppBar({
    required this.title,
    //required this.gradientColors,
    //this.beginAlignment = Alignment.topLeft,
    //this.endAlignment = Alignment.bottomRight,
  });

  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      centerTitle: true,
      toolbarHeight: 100,
      shadowColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0x0064DA91), Color(0xCC103224)],
          ),
        ),
      ),
    );
  }
}