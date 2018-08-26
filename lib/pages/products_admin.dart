import 'package:flutter/material.dart';
import './products.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Return Back'),
            ),
            ListTile(
              title: Text("Show Products"),
              onTap: () {
                Navigator.pushReplacement(context,
                MaterialPageRoute(
                  builder: (BuildContext build) => ProductsPage(),
                ));
              }
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text('Product Admin')),
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
