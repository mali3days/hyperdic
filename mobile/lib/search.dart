import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final dynamic products;
  // final List<String> products;
  // final Function deleteProduct;

  Search(
    this.products,
    // {this.deleteProduct}
  );

  Widget _buildProductList(BuildContext context) {
    List<Widget> defs = products["def"].map<Widget>((def) {
      return Container(
        padding: EdgeInsets.all(10.0),
        child: Card(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(def["text"]),
                    Text("[${def["ts"]}]"),
                    Text(def["pos"])
                  ],
                ),
                Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: def["tr"].map<Widget>((tr) {
                        var index = def["tr"].indexOf(tr);
                        var arrayToRender = <Widget>[];
                        var meaningArray = <Widget>[];
                        var exampleArray = <Widget>[];

                        arrayToRender.add(Container(
                          width: 20,
                          margin: EdgeInsets.only(top: 10.0),
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          ),
                        ));

                        arrayToRender.add(Container(
                            margin: EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: <Widget>[
                                tr["gen"] != null
                                    ? Row(
                                        children: <Widget>[
                                          Text("${tr["text"]}"),
                                          Text(
                                            " ${tr["gen"]}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                color: Colors.grey),
                                          ),
                                          tr["syn"] != null
                                              ? Text(", ")
                                              : Container(),
                                        ],
                                      )
                                    : tr["syn"] != null
                                        ? Text("${tr["text"]}, ")
                                        : Text("${tr["text"]}"),
                              ],
                            )));

                        if (tr["syn"] != null) {
                          tr["syn"].forEach((syn) {
                            var indexOfSyn = tr["syn"].indexOf(syn);
                            var isLastSyn =
                                (tr["syn"].length - 1 - indexOfSyn) == 0;

                            arrayToRender.add(Container(
                                margin: EdgeInsets.only(top: 10.0),
                                // child: Text("${syn["text"]}, ")
                                child: Row(
                                  children: <Widget>[
                                    syn["gen"] != null
                                        ? Row(
                                            children: <Widget>[
                                              Text(" ${syn["text"]}"),
                                              Text(
                                                " ${syn["gen"]}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.grey),
                                              ),
                                              isLastSyn
                                                  ? Container()
                                                  : Text(", "),
                                            ],
                                          )
                                        : isLastSyn
                                            ? Text("${syn["text"]}")
                                            : Text("${syn["text"]}, "),
                                    // : syn["gen"] != null
                                    //     ? Text("${syn["text"]}")
                                    //     : Text("${syn["text"]}, "),
                                  ],
                                )));
                          });
                        }

                        var mean = tr["mean"];
                        if (mean != null) {
                          // meaningArray.add(Text("TEST"));

                          var meaningList = mean.map((meaning) {
                            return meaning["text"];
                          });

                          String stt = meaningList.join(", ").toString();

                          meaningArray.add(Container(
                            margin: EdgeInsets.only(top: 10.0, left: 20.0),
                            child: Text("($stt)"),
                          ));
                        }

                        var example = tr["ex"];
                        if (example != null) {
                          var exampleList = example.map((ex) {
                            var exampleIndex = example.indexOf(ex);
                            var isLastEx =
                                (example.length - 1 - exampleIndex) == 0;
                            String endingChar = isLastEx ? "" : "\n";

                            return ex["text"] +
                                ' - ' +
                                ex["tr"][0]["text"] +
                                endingChar;
                          });

                          String exampleListString =
                              exampleList.join('\n').toString();

                          exampleArray.add(
                            Container(
                              margin: EdgeInsets.only(top: 10.0, left: 40.0),
                              child: SizedBox(
                                width: 272,
                                child: Text(exampleListString),
                              ),
                            ),
                          );
                        }

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(children: arrayToRender),
                            Row(children: meaningArray),
                            Row(children: exampleArray)
                          ],
                        );
                      }).toList(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }).toList();

    Widget productCard = Container(
        child: ListView(children: [
      // Image.asset('assets/example.jpg'),
      ...defs,
    ]));
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList(context);
  }
}
