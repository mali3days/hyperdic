import 'package:flutter/material.dart';

import 'package:mobile/search_control.dart';
import 'package:mobile/word_list.dart';
import 'package:mobile/providers/dictionary.dart';

// import './providers/dictionary.dart' as dictionary;

class SearchManager extends StatefulWidget {
  // final String startingProduct;

  // SearchManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _SearchManagerState();
  }
}

class _SearchManagerState extends State<SearchManager> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: SearchControl(_searchText),
        ),
        // Text("История поиска"),
        Expanded(
          child: WordList(
            // _text,
            // deleteProduct: _deleteProduct,
          ),
        ),
      ],
    );
  }
}
