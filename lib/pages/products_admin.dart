import 'package:flutter/material.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Admin')
      ),
      body: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('This is the admin page'),
          )
        ],
      ),
    );
  }
}
