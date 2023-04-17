import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/widgets.dart';

class ShoeDescrPage extends StatelessWidget {
  const ShoeDescrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Stack(
           children:  [
              const ShoeShadow(
            fullscreen: true,
          ),
          Positioned(
            top: 40,
            child: FloatingActionButton(
              elevation: 0,
              highlightElevation: 0,
              backgroundColor: Colors.transparent,
              child: const Icon(Icons.arrow_back_ios_new, size: 30,),
              onPressed: () {  },

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
              children: const [
                Text(
                  '\$180.0',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                ButtonCustom(
                  title: 'Buy now',
                  height: 40,
                  width: 130,
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
                          child: _Colorshoe(color: Color(0xffc6d642))),
                      Positioned(
                          left: 60,
                          child: _Colorshoe(color: Color(0xffFFAD29))),
                      Positioned(
                          left: 30,
                          child: _Colorshoe(color: Color(0xff2099f1))),
                      Positioned(child: _Colorshoe(color: Color(0xff364d56))),
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
  const _Colorshoe({
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
