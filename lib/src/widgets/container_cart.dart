import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/button_custom.dart';

class ContainerCart extends StatelessWidget {
  final String price;
  const ContainerCart({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey.withOpacity(0.15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),

              const ButtonCustom(title: 'Add to cart')
            ],
          ),
        ),
      ),
    );
  }
}
