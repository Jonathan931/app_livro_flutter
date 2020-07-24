import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'book_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categorias = [
    "Android",
    "Java",
    "História",
    "Ciências",
    "Myths",
    "Typograpyh"
  ];

  int _selectedindex = 0;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 42, left: 32),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Text("Browse",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                  Text("Recommended",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey[500]))
                ],
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: categorias.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext c, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 6,
                          right: 6,
                        ),
                        child: GestureDetector(
                            onTap: () {
                              _selectedindex = index;
                              setState(() {});
                            },
                            child: Chip(
                                backgroundColor: index == _selectedindex
                                    ? Colors.blue
                                    : Colors.grey[200],
                                label: Text(categorias.elementAt(index),
                                    style: TextStyle(
                                        color: index == _selectedindex
                                            ? Colors.white
                                            : Colors.grey[700])))),
                      );
                    },
                  )),
              ListView.builder(
                  itemCount: categorias.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return BookWidget();
                  }),
            ],
          ),
        ));
  }
}
