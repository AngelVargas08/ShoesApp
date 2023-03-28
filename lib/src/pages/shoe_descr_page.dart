
import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/container_shoe.dart';
import 'package:shoes_app/src/widgets/widgets.dart';

class ShoeDescrPage extends StatelessWidget {
   
  const ShoeDescrPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children:  const [
           ShoeShadow(fullscreen: true,),
           ShoeDescription(
                title: 'Nike Air Max 720',
                description:
                    "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
              ),
      ],)
    );
  }
}