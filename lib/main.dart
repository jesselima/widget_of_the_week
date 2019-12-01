import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'SafeArea'),
    );
  }
}

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SafeArea"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyCard(),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatefulWidget {

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {

  String text = "Click me";
  double _width = 250;
  double _height = 250;
  Color _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.linearToEaseOut,
      width: _width,
      height: _height,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(getRandomValue(max: 50))),
        ),
        elevation: 4,
        color: _color,
        borderOnForeground: true,
        child: Padding(
            padding: EdgeInsets.all(10),
            child: FlatButton(
              child: Text("$text", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              onPressed: () {
                setState(() {
                  _width = getRandomValue(max: 300);
                  if(_width < 130) _width = 130;

                  _height = getRandomValue(max: 300);
                  if(_height < 100) _height = 100;

                  text = DateTime.now().millisecond.toString();
                  _color = Color.fromRGBO(getRandomColorInt(), getRandomColorInt(), getRandomColorInt(), 1);

                });
              },
            ),
        ),
      ),
    );
  }

  double getRandomValue({max: int}) {
    return Random().nextDouble() * max;
  }

  int getRandomColorInt() {
    int r = Random().nextInt(255);
    return r;
  }
}
