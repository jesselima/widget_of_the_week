
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {

  final String text;
  final Color color;
  MyCard([this.text = "Hello World :D", this.color = Colors.blueAccent]);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 4,
        color: color,
        borderOnForeground: true,
        child: Padding(padding: EdgeInsets.all(50), child: Text(text, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
      ),
    );
  }
}