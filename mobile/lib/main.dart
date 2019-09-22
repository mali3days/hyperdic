import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

import './screens/auth.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(Hyperdic());
}

class Hyperdic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hyperdic',
      // debugShowMaterialGrid: true,
      // theme: ThemeData(
      //   primarySwatch: Colors.green,
      //   accentColor: Colors.lightBlue,
      //   brightness: Brightness.light,
      // ),
      home: AuthScreen(),
    );
  }
}
