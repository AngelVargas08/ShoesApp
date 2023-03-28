
import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/container_shoe.dart';

class ShoeDescrPage extends StatelessWidget {
   
  const ShoeDescrPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children:  const [
           ShoeShadow(fullscreen: true,) 
      ],)
    );
  }
}