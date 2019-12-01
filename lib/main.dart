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
        title: Text("Wrap"),
      ),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.start,
//          alignment: WrapAlignment.end,
//          alignment: WrapAlignment.spaceEvenly,
//          alignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 20,
          children: <Widget>[
            MyCard(),
            MyCard(),
            MyCard(),

          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {

  final String text;
  MyCard({this.text = "Hello World :D"});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 4,
        color: Colors.blueAccent,
        borderOnForeground: true,
        child: Padding(padding: EdgeInsets.all(50), child: Text(text)),
      ),
    );
  }
}