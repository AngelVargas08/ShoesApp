
import 'package:flutter/material.dart';

class ShoeDescription extends StatelessWidget {
  final String title;
  final String description;
  const ShoeDescription({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left: 30,right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text( title, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
          const SizedBox(height: 15,),
          Text(description, style: const TextStyle(color: Colors.black54, height: 1.6),)
        ],
      ),
    );
  }
}