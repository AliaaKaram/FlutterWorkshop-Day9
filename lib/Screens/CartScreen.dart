import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( child: Text("SETTINGS SCREEN", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),),
    );
  }
}
