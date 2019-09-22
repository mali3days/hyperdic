import 'package:flutter/material.dart';

class SearchControl extends StatefulWidget {
  final Function searchText;

  SearchControl(this.searchText);

  @override
  _SearchControlState createState() => _SearchControlState();
}

class _SearchControlState extends State<SearchControl> {
  TextEditingController _controller = TextEditingController();

  int textLength = 0;

  @override
  void initState() {
    super.initState();

    _controller.addListener(_searchTextUpdate);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _searchTextUpdate() {
    setState(() {
      textLength = _controller.text.length;
    });
    widget.searchText(_controller.text);
  }

  _clearTextInput() {
    _controller.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Container(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _controller,
                  autofocus: true,
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter text',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: textLength > 0 ? IconButton(
                      icon: Icon(Icons.clear),
                      color: Colors.red,
                      onPressed: () {
                        this._clearTextInput();
                      }
                    ): null,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
