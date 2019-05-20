import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(Hyperdic());

class Hyperdic extends StatelessWidget {
  @override
  Widget build(BuildContext context) => (MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.lightBlue,
          brightness: Brightness.light,
        ), 
        home: Scaffold(
            appBar: AppBar(
              title: Text('Hyperdic'),
            ),
            body: ProductManager(startingProduct: 'Food Tester!')),
      ));
}
