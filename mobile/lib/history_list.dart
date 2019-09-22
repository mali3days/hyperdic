import 'package:flutter/material.dart';

import 'package:mobile/search_control.dart';
import 'package:mobile/providers/dictionary.dart';

// import './providers/dictionary.dart' as dictionary;

class HistoryList extends StatefulWidget {
  // final String startingProduct;

  // SearchManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _SearchManagerState();
  }
}

class _SearchManagerState extends State<HistoryList> {
  // final List<String> _products = [];
  dynamic _text = [];

  @override
  void initState() {
    // if (widget.startingProduct != null) {
    // _products.add(widget.startingProduct);
    // }
    super.initState();
    this.getInitialWord();
  }

  void getInitialWord() async {
    var text = await fetchDictionary().then((res) => res);
    // print(_text);
    // debugPrint(word);

    setState(() {
      _text = text;
    });
  }

  void _searchText(String textss) {
    // setState(() {
    //   _products.add(text);
    // });
    // TODO: make API call for the words
    // print(_text);
    // debugPrint(text);
    // debugPrint(EXAMPLE_OF_THE_RESPONE);
    // fetchDictionary();
  }

  // void _deleteProduct(int index) {
  //   setState(() {
  //     _products.removeAt(index);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Burger"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Oops"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Banana"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Sexy"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Orange"),
        ),
                Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Burger"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Oops"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Banana"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Sexy"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Orange"),
        ),
                Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Burger"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Oops"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Banana"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Sexy"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Orange"),
        ),
                Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Burger"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Oops"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Banana"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Sexy"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Orange"),
        ),
                Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Burger"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Oops"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Banana"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Sexy"),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text("Orange"),
        ),
      ],
    );
  }
}
