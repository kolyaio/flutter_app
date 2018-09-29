import 'package:flutter/material.dart';

import './products.dart';


class ProductManager extends StatelessWidget {

  final List<Map<String, String>> products;


  ProductManager(this.products);

  @override
  Widget build(BuildContext context) {

    return Column(children: [
       Expanded(child: Products(products))
      ]);
  }
}
