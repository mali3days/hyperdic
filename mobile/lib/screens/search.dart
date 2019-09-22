import 'package:flutter/material.dart';

import '../search_manager.dart';
import '../search.dart';

import '../providers/dictionary.dart';

class SearchScreen extends StatefulWidget {
  // final String startingProduct;

  // SearchManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _SearchScreen();
  }
}

// class _SearchManagerState extends State<HistoryList> {
class _SearchScreen extends State<SearchScreen> {
  dynamic _products = [];

  @override
  void initState() {
    // if (widget.startingProduct != null) {
    // _products.add(widget.startingProduct);
    // }
    super.initState();
    this.getInitialWord();
  }

  void getInitialWord() async {
    var products = await fetchDictionary().then((res) => res);
    // print(_text);
    // debugPrint(word);

    setState(() {
      _products = products;
    });
  }
  
// dictionary.fetchDictionary()
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      // body: SearchManager(),
      body: Search(_products),
    );
  }
}

  // @override
  // void initState() {
  //   // if (widget.startingProduct != null) {
  //   // _products.add(widget.startingProduct);
  //   // }
  //   this.allWords();
  // }

  // void allWords() async {
  //   products = await dictionary.fetchDictionary().then((res) => res);
  //   // print(_text);
  //   // debugPrint(word);

  //   setState(() {
  //     products = products;
  //   });
  // }