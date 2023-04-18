import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/src/helper/helpers.dart';
import 'package:shoes_app/src/models/shoe_model.dart';
import 'package:shoes_app/src/pages/home_shoes.dart';
import 'package:shoes_app/src/widgets/widgets.dart';

class ShoeDescrPage extends StatelessWidget {
  const ShoeDescrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    changeStatusLigth();

    return Scaffold(
      body: Column(
        children: [
         Stack(
           children:  [
              const Hero(
                tag: 'Show-1',
                child:  ShoeShadow(
                          fullscreen: true,
                        ),
              ),
          Positioned(
            top: 40,
            child: FloatingActionButton(
              elevation: 0,
              highlightElevation: 0,
              backgroundColor: Colors.transparent,
              child: const Icon(Icons.arrow_back_ios_new, size: 30,),
              onPressed: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeShoes(),)),

            )
            
            )
           ], 
         ),
          const ShoeDescription(
            title: 'Nike Air Max 720',
            description:
                "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 25, left: 30, right: 30, bottom: 20),
            child: Row(
              children:  [
                const Text(
                  '\$180.0',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Bounce(
                  delay: const Duration(seconds: 1),
                  from: 8,
                  child: const ButtonCustom(
                    title: 'Buy now',
                    height: 40,
                    width: 130,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 40),
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: const [
                      Positioned(
                          left: 90,
                          child: _Colorshoe(color: Color(0xffc6d642),index:4, urlImage: 'assets/img/verde.png',)),
                      Positioned(
                          left: 60,
                          child: _Colorshoe(color: Color(0xffFFAD29),index:3,urlImage: 'assets/img/amarillo.png')),
                      Positioned(
                          left: 30,
                          child: _Colorshoe(color: Color(0xff2099f1),index:2,urlImage: 'assets/img/azul.png')),
                      Positioned(child: _Colorshoe(color: Color(0xff364d56),index:1,urlImage: 'assets/img/negro.png')),
                    ],
                  ),
                ),
                const ButtonCustom(
                  title: 'More related items',
                  height: 30,
                  width: 170,
                  color: Color(0xffFFc675),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              const _Buttonstyle(
                icon: Icon(Icons.favorite, color: Colors.orange,),
                colorbutton: Colors.white,
              ),
              _Buttonstyle(
                icon: Icon(Icons.shopping_cart, color: Colors.grey.withOpacity(0.4),),
                colorbutton: Colors.white,
              ),
              _Buttonstyle(
                icon: Icon(Icons.star,color: Colors.grey.withOpacity(0.4),),
                colorbutton: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Buttonstyle extends StatelessWidget {
  final Icon icon;
  final Color colorbutton;
  const _Buttonstyle(
      {Key? key,
      required this.icon,
      required this.colorbutton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          color: colorbutton,
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
                color: Colors.black45,
                spreadRadius: -5,
                blurRadius: 20,
                offset: Offset(0, 10))
          ]),
      child: icon
    );
  }
}

class _Colorshoe extends StatelessWidget {
  final Color color;
  final int index;
  final String urlImage;
  const _Colorshoe({
    required this.color, required this.index, required this.urlImage,
  });

  @override
  Widget build(BuildContext context) {

    return FadeInLeft(
      delay: Duration(milliseconds: index*200),
      duration: const Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          final shoeModel = context.read<ShoeModel>();
                shoeModel.assetImage = urlImage;
                print(urlImage);
        },
        child: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
