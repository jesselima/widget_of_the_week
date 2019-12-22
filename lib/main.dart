import 'package:flutter/material.dart';
import 'package:widget_of_the_week/my_card.dart';

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

  static final _controller = PageController(
    initialPage: 1
  );

  final pageView = PageView(
    controller: _controller,
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      MyCard(cardColor: Colors.amberAccent, cardText: "Page 1"),
      MyCard(cardColor: Colors.blueAccent, cardText: "Page 2"),
      MyCard(cardColor: Colors.lightGreen, cardText: "Page 3"),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SafeArea"),
      ),
      body: Center(
        child: pageView
      ),
    );
  }
}
