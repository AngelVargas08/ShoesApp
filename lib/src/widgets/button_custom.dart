

import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String title;
  const ButtonCustom({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(100)
      ),
      child: Text(title, style: const TextStyle( fontSize: 15,
        fontWeight: FontWeight.bold, color: Colors.white),),
    );
  }
}