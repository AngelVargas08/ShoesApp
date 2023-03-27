import 'package:flutter/material.dart';

class ShoeShadow extends StatelessWidget {
  const ShoeShadow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: size.height * 0.60,
        decoration: BoxDecoration(
            color: Colors.orange[300], borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [const _ShoeWithShadow(), _ShoeSize()],
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
    return Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            sizeShoe.toString().replaceAll('.0', ''),
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),
        ));
  }
}

class _ShoeWithShadow extends StatelessWidget {
  const _ShoeWithShadow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(bottom: 80, left: 100, child: _Shadow()),
        Padding(
          padding: const EdgeInsets.all(50),
          child: Image.asset('assets/img/azul.png'),
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
