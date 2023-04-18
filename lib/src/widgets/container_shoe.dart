import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/src/models/shoe_model.dart';
import 'package:shoes_app/src/pages/shoe_descr_page.dart';

class ShoeShadow extends StatelessWidget {
  final bool fullscreen;
  const ShoeShadow({super.key, this.fullscreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        if(!fullscreen){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ShoeDescrPage(),));
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: (fullscreen) ? 8 : 30, vertical: (fullscreen) ? 8 : 5),
        child: Container(
          width: double.infinity,
          height: (fullscreen) ? size.height * 0.48 : size.height * 0.55,
          decoration: BoxDecoration(
              color: Colors.orange[300],
              borderRadius: (fullscreen)
                  ? const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))
                  : BorderRadius.circular(50)),
          child: Column(
            children: [
              _ShoeWithShadow(
                fullscreen: fullscreen,
              ),
              if (!fullscreen) _ShoeSize()
            ],
          ),
        ),
      ),
    );
  }
}

class _ShoeSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        _BoxSize(7),
        _BoxSize(7.5),
        _BoxSize(8),
        _BoxSize(8.5),
        _BoxSize(9),
        _BoxSize(9.5),
        _BoxSize(10),
      ],
    );
  }
}

class _BoxSize extends StatelessWidget {
  final double sizeShoe;
  const _BoxSize(this.sizeShoe);

  @override
  Widget build(BuildContext context) {

    final shoeModel = context.watch<ShoeModel>().talla;

    return GestureDetector(
      onTap: () {
                 final shoeModel2 = context.read<ShoeModel>();
                  shoeModel2.talla = sizeShoe;
      },
      child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: (sizeShoe == shoeModel) ? Colors.orange : Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                if (sizeShoe == shoeModel)
                  const BoxShadow(
                      color: Colors.orange, blurRadius: 10, offset: Offset(0, 5))
              ]),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              sizeShoe.toString().replaceAll('.0', ''),
              style: TextStyle(
                color: (sizeShoe == shoeModel) ? Colors.white : Colors.orange,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }
}

class _ShoeWithShadow extends StatelessWidget {
  final bool fullscreen;
  const _ShoeWithShadow({
    this.fullscreen = false,
  });

  @override
  Widget build(BuildContext context) {

    final shoeModel = context.watch<ShoeModel>().assetImage;

    return Stack(
      children: [
        const Positioned(bottom: 80, left: 100, child: _Shadow()),
        Padding(
          padding: EdgeInsets.only(
              top: (fullscreen) ? 10 : 60,
              left: (fullscreen) ? 70 : 60,
              right: (fullscreen) ? 70 : 60),
          child: Image.asset(
            shoeModel,
          ),
        ),
      ],
    );
  }
}

class _Shadow extends StatelessWidget {
  const _Shadow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        height: 100,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [BoxShadow(color: Colors.orange, blurRadius: 40)]),
      ),
    );
  }
}
