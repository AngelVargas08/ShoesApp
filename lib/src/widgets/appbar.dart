
import 'package:flutter/material.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SizedBox(
            child: Padding(
              padding:  const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('For You',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  Icon(Icons.search, size: 30,)
                ],
              ),
    
            ),
    
      ),
    );
  }
}