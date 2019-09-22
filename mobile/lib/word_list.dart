import 'package:flutter/material.dart';

import 'package:mobile/search_control.dart';
import 'package:mobile/providers/dictionary.dart';

class _WordDescription extends StatelessWidget {
  _WordDescription({
    Key key,
    this.title,
    this.transcription,
    this.translation,
    this.tags,
    this.author,
    this.publishDate,
    this.readDuration,
  }) : super(key: key);

  final String title;
  final String transcription;
  final String translation;
  final List tags;
  final String author;
  final String publishDate;
  final String readDuration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(right: 5.0)),
                  Text(
                    '[$transcription]',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        // fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                translation,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12.0,
                  color: Colors.black54,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 5.0)),
              Text(
                tags.map((tag) {
                  return '#$tag';
                }).join(', '),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    // fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomListItemTwo extends StatelessWidget {
  CustomListItemTwo({
    Key key,
    this.thumbnail,
    this.title,
    this.transcription,
    this.translation,
    this.tags,
    this.author,
    this.publishDate,
    this.readDuration,
  }) : super(key: key);

  final String thumbnail;
  final String title;
  final String transcription;
  final String translation;
  final List tags;
  final String author;
  final String publishDate;
  final String readDuration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                child: _WordDescription(
                  title: title,
                  transcription: transcription,
                  translation: translation,
                  tags: tags,
                  author: author,
                  publishDate: publishDate,
                  readDuration: readDuration,
                ),
              ),
            ),
            Container(
              constraints: BoxConstraints(maxWidth: 80),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(thumbnail),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// import './providers/dictionary.dart' as dictionary;

class WordList extends StatefulWidget {
  // final String startingProduct;

  // SearchManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _WordListState();
  }
}

class _WordListState extends State<WordList> {
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
      padding: const EdgeInsets.all(20.0),
      children: [
        CustomListItemTwo(
          thumbnail: "assets/example.jpg",
          title: 'Fox',
          transcription: 'foks',
          translation: 'лиса, лисица, песец, лисичка',
          tags: ["tag1", "tag2"],
          author: 'Dash',
          publishDate: 'Dec 28',
          readDuration: '5 mins',
        ),
        CustomListItemTwo(
          thumbnail: "assets/food.jpg",
          title: 'Apple',
          transcription: 'эпл',
          translation: 'яблоко, яблоня',
          tags: ["tag3", "tag4"],
          author: 'Flutter',
          publishDate: 'Feb 26',
          readDuration: '12 mins',
        ),
        CustomListItemTwo(
          thumbnail: "assets/square.jpg",
          title: 'Apple',
          transcription: 'эпл',
          translation: 'яблоко, яблоня',
          tags: ["tag3", "tag4"],
          author: 'Flutter',
          publishDate: 'Feb 26',
          readDuration: '12 mins',
        ),
      ],
    );
  }
}
