import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(Hyperdic());

class Hyperdic extends StatelessWidget {
  @override
  Widget build(BuildContext context) => (MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Hyperdic'),
            ),
            body: ProductManager('Food Tester!')),
      ));
}
