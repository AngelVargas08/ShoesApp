
import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/widgets.dart';


class HomeShoes extends StatelessWidget {
   
  const HomeShoes({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: const[
          CustomAppbar(),
           ShoeShadow()

        ],
      )
    );
  }
}