import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/currency_converter_material_page.dart';
import 'package:flutter_application_1/currency_converter_cupertino_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //ITS KIND OF LIKE A TREE

    //MATERIALAPP
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverterMaterialPageStateFul(),
    );

    //CUPERTINOAPP - IOS STYLE
    // return const CupertinoApp(
    //   debugShowCheckedModeBanner: false,
    //   home: CurrencyConverterMaterialPageStateFul(),
    // );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverterCupertinoPageStateFul(),
    );
  }
}




//CUPERTINOAPP - IOS STYLE