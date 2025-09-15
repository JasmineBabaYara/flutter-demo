import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  // const CategoryIcon({super.key});

  final dynamic bgColor;
  final IconData iconData;

   // ignore: prefer_const_constructors_in_immutables
   CategoryIcon({super.key, required this.bgColor, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(iconData, size: 30, color: Colors.white),
    );
  }
}
