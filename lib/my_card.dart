
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {

  final String cardText;
  final Color cardColor;

  // Constructor with optional parameters and
  MyCard({this.cardText = "Default Text", this.cardColor = Colors.blueAccent});

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 4,
        color: widget.cardColor,
        borderOnForeground: true,
        child: Padding(
            padding: EdgeInsets.all(50),
            child: Text(widget.cardText,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )
        ),
      ),
    );
  }
}