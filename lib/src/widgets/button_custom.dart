

import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  final Color color;
  const ButtonCustom({super.key, required this.title, 
   this.height = 50, 
   this.width = 150 ,
   this.color = Colors.orange
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(100)
      ),
      child: Text(title, style: const TextStyle( fontSize: 15,
        fontWeight: FontWeight.bold, color: Colors.white),),
    );
  }
}