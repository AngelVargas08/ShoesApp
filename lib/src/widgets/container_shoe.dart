import 'package:flutter/material.dart';


class ContainerShoe extends StatelessWidget {
  const ContainerShoe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 490,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.orange[300],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              Container(
                /*decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange,
                      offset: Offset(50, 28)
                    )
                  ]
                ),*/
                child:  Image.asset('assets/img/azul.png',height: 300,),
              ),
              Row(
                
                children: [
                  _SizeShoe()
                ],
              )
             
        ],
      ),
      
    );
  }
}

class _SizeShoe extends StatelessWidget {
  const _SizeShoe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
       borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: const Center(
        child: Text('7', style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange),),
      )
        );
  }
}