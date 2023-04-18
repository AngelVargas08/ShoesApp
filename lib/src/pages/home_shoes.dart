import 'package:flutter/material.dart';
import 'package:shoes_app/src/helper/helpers.dart';
import 'package:shoes_app/src/widgets/widgets.dart';

class HomeShoes extends StatelessWidget {
  const HomeShoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    changeStatusDark();

    return Scaffold(
        body: Column(
      children: [
        const CustomAppbar(),
        Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(), 
          child: Column(
            children:  const[
              Hero(
                tag: 'Show-1',
              child: ShoeShadow()),
              ShoeDescription(
                title: 'Nike Air Max 720',
                description:
                    "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
              ),
             ],
          ),
        )
        ),
         const ContainerCart(price: '\$ 180.0')
      ],
    ));
  }
}
