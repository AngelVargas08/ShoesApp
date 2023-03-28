import 'package:flutter/material.dart';
import 'package:shoes_app/src/pages/home_shoes.dart';
import 'package:shoes_app/src/pages/shoe_descr_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
       body: //HomeShoes()
            ShoeDescrPage()
      ),
    );
  }
}