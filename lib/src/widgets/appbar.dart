
import 'package:flutter/material.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30, top: 30, bottom: 30),
        child: SafeArea(
          top: true,
          bottom: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
                Text('For You', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                Icon(Icons.search, size: 30,)
            ]
            
            ),
        ),
      ),
    );
  }
}