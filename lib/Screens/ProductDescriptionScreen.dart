import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDescriptionScreen extends StatelessWidget {
  const ProductDescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PRODUCT DESCRIPTION"),
      ),
      body: Center(
        child: Text(
          "PRODUCT DESCRIPTION",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}